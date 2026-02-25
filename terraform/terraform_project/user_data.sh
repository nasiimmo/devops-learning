#!/bin/bash
set -eux

# Log user-data output for debugging early
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

# Update packages and install httpd/php/unzip/wget
yum update -y
yum install -y httpd php php-mysqlnd unzip wget

# Ensure httpd is enabled and started
systemctl enable httpd
systemctl start httpd

# Prepare webroot
WEBROOT="/var/www/html"
rm -rf ${WEBROOT}/*
mkdir -p ${WEBROOT}
chown -R apache:apache ${WEBROOT}
chmod -R 755 ${WEBROOT}

# Download and install WordPress
cd /tmp
if wget -q https://wordpress.org/latest.tar.gz -O latest.tar.gz; then
  tar -xzf latest.tar.gz
  cp -r wordpress/* ${WEBROOT}/
  chown -R apache:apache ${WEBROOT}
else
  # fallback simple index page if download fails
  cat > ${WEBROOT}/index.html <<'EOF'
<html><body><h1>Apache is working</h1><p>WordPress download failed.</p></body></html>
EOF
  chown apache:apache ${WEBROOT}/index.html
fi

# Disable SELinux enforcement if present (optional; evaluate security)
if command -v getenforce >/dev/null 2>&1; then
  setenforce 0 || true
  sed -i 's/^SELINUX=enforcing/SELINUX=permissive/' /etc/selinux/config || true
fi

echo "user-data finished"
