<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>AWS ALB with Private EC2 Instances</title>
</head>
<body>

<h1>AWS ALB with Private EC2 Instances</h1>

<h2>Objective</h2>
<p>Deploy two EC2 instances behind an Application Load Balancer (ALB). The ALB should handle all incoming traffic, and the EC2 instances must not be accessible directly from the internet.</p>

<h2>Tasks Completed</h2>

<h3>1. Two EC2 Instances</h3>
<ul>
    <li>Launched two EC2 instances in the same VPC</li>
    <li>Deployed in different availability zones for high availability</li>
    <li>Installed a simple web server using user-data</li>
    <li>Configured each instance to return different content for testing</li>
</ul>

<h3>2. Set Up the ALB</h3>
<ul>
    <li>Created an ALB in two public subnets</li>
    <li>Added an HTTP (port 80) listener</li>
    <li>Created a Target Group and registered both EC2 instances</li>
    <li>Configured a health check on the root path <code>/</code></li>
</ul>

<h3>3. Security Groups</h3>
<ul>
    <li>ALB Security Group: Allow HTTP (80) from anywhere</li>
    <li>EC2 Security Group: Allow HTTP only from the ALB SG</li>
    <li>Confirmed that direct public access to EC2 is blocked</li>
</ul>

<h3>4. Testing</h3>
<ul>
    <li>Visited the ALB DNS name in a browser</li>
    <li>Verified that traffic alternates between both instances</li>
    <li>Confirmed that health checks report both instances as healthy</li>
</ul>

<h2>Challenges Encountered</h2>

<h3>No Internet Gateway / Route Table Issue</h3>
<p>Initially, the VPC and instances did not have an Internet Gateway attached, so instances could not access the internet.</p>
<p>Solution: Added an IGW and updated the public route table to allow outbound traffic.</p>

<h3>Subnet Availability for ALB</h3>
<p>The ALB threw an error about subnet availability in one of the zones.</p>
<p>Solution: Added the correct subnet in the other availability zone to fix the deployment.</p>

<h3>User-data Execution</h3>
<p>Learned that user data only runs on first boot.</p>
<p>Solution: Corrected scripts and AMI selection to ensure web servers were installed properly.</p>

<h2>What I Learned</h2>
<ul>
    <li>How to deploy private EC2 instances behind an ALB with proper security groups</li>
    <li>How Route Tables and Internet Gateways affect instance connectivity</li>
    <li>How to use Target Groups and health checks to distribute traffic between instances</li>
    <li>Troubleshooting deployment issues: subnet misconfiguration, missing IGW, and user-data errors</li>
    <li>The importance of multi-AZ deployment for high availability</li>
</ul>

<h2>What I Built</h2>
<ul>
    <li>VPC with public and private subnets</li>
    <li>Two EC2 instances with unique web content</li>
    <li>Application Load Balancer distributing traffic</li>
    <li>Secure network setup: EC2s are only accessible via ALB</li>
    <li>Fully tested setup with traffic alternating between instances</li>
</ul>

</body>
</html>
