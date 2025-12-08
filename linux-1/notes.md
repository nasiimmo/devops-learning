cd /var/log      # Change directory to /var/log
ls -lah          # List all files with details and human-readable sizes
pwd              # Print the current working directory


touch test.txt            # Create an empty file called test.txt
mkdir -p projects/demo    # Make directory projects/demo (create parent dirs if needed)
cp test.txt projects/demo/    # Copy test.txt into projects/demo/
mv projects/demo/test.txt projects/demo/backup.txt   # Rename or move the file
rm projects/demo/backup.txt   # Delete the file


cat /etc/passwd             # Show the full content of /etc/passwd
less /var/log/syslog        # View /var/log/syslog page by page
head -n 20 /etc/services    # Show the first 20 lines of /etc/services
tail -f /var/log/auth.log   # Follow new lines in /var/log/auth.log in real-time


