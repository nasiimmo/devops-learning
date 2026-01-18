<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>

<h1 align="center">EC2 NGINX Deployment with Cloudflare DNS</h1>

<p align="center">
  <b>A foundational DevOps project demonstrating cloud infrastructure, service configuration, and DNS integration.</b>
</p>

<hr/>

<h2>📌 Project Overview</h2>

<p>
This project demonstrates the deployment of a basic web server using <b>AWS EC2</b>,
configuration of <b>NGINX</b> as a web service, and exposure of the service to the internet
using <b>Cloudflare DNS</b>.
</p>

<p>
The goal of this project is to build and validate a simple but production-relevant setup
while gaining hands-on experience with infrastructure, networking, and troubleshooting.
</p>

<hr/>

<h2>🛠️ What I Built</h2>

<ul>
  <li>Launched an <b>AWS EC2 instance</b> in a public subnet with an auto-assigned public IPv4 address</li>
  <li>Configured an <b>EC2 Security Group</b> allowing:
    <ul>
      <li>SSH (port 22) for administration</li>
      <li>HTTP (port 80) for web traffic</li>
    </ul>
  </li>
  <li>Installed and started <b>NGINX</b> using EC2 user data</li>
  <li>Configured a <b>Cloudflare A record</b> pointing a domain to the EC2 public IP</li>
  <li>Validated that the domain loads the <b>NGINX default landing page</b></li>
</ul>

<h3>High-Level Architecture</h3>

<pre>
Browser
   ↓
Cloudflare DNS
   ↓
EC2 Public IP
   ↓
NGINX Web Server
</pre>

<hr/>

<h2>📚 What I Learned</h2>

<h3>AWS & Infrastructure</h3>
<ul>
  <li>How security groups act as instance-level firewalls</li>
  <li>How EC2 user data executes scripts only on first boot</li>
</ul>

<h3>Linux & NGINX</h3>
<ul>
  <li>Installing services using <code>yum</code></li>
  <li>Managing services with <code>systemctl</code></li>
  <li>Importance of confirming services are running and listening on correct ports</li>
</ul>

<h3>DNS & Cloudflare</h3>
<ul>
  <li>How A records map domains to IP addresses</li>
  <li>Difference between <b>DNS only</b> and <b>Proxied</b> records</li>
</ul>

<h3>DevOps Fundamentals</h3>
<ul>
  <li>Debugging issues layer by layer (service → network → DNS)</li>
  <li>Using minimal configurations to simplify troubleshooting</li>
</ul>

<hr/>

<h2>🚧 Challenges & Solutions</h2>

<h3>NGINX Not Reachable</h3>
<p><b>Problem:</b> The site kept loading or could not be reached.</p>
<p><b>Cause:</b> EC2 user data did not run because the script was missing a shebang.</p>
<p><b>Solution:</b> Recreated the EC2 instance with correct user data:</p>

<pre>
#!/bin/bash
yum update -y
yum install -y nginx
systemctl enable nginx
systemctl start nginx
</pre>

<hr/>

<h3>HTTP Traffic Blocked</h3>
<p><b>Problem:</b> Web traffic could not reach the instance.</p>
<p><b>Cause:</b> Security group rules were incorrectly applied.</p>
<p><b>Solution:</b> Ensured the correct security group was attached and allowed TCP port 80 from <code>0.0.0.0/0</code>.</p>

<hr/>

<h3>Cloudflare Proxy Confusion</h3>
<p><b>Problem:</b> Uncertainty around proxy status settings.</p>
<p><b>Solution:</b> Used <b>DNS only</b> to validate direct connectivity before enabling Cloudflare proxy features.</p>

<hr/>

<h2>✅ Key Takeaways</h2>

<ul>
  <li>Infrastructure problems must be solved from the ground up</li>
  <li>EC2 user data is powerful but must be written correctly</li>
  <li>Simple setups reduce debugging complexity</li>
</ul>

<hr/>

<h2>📁 Portfolio Context</h2>

<p>
This repository is part of my <b>DevOps portfolio</b> and demonstrates hands-on experience
with cloud infrastructure, networking, and operational troubleshooting.
</p>

<hr/>

<p align="center">
  <i>Built to understand, debug, and operate real-world infrastructure.</i>
</p>

</body>
</html>
