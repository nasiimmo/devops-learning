AWS ALB with Private EC2 Instances
Objective

Deploy two EC2 instances behind an Application Load Balancer (ALB).
The ALB should handle all incoming traffic, and the EC2 instances must not be accessible directly from the internet.

Tasks Completed
1. Two EC2 Instances

Launched two EC2 instances in the same VPC

Deployed in different availability zones for high availability

Installed a simple web server using user-data

Configured each instance to return different content for testing

2. Set Up the ALB

Created an ALB in two public subnets

Added an HTTP (port 80) listener

Created a Target Group and registered both EC2 instances

Configured a health check on the root path /

3. Security Groups

ALB Security Group: Allow HTTP (80) from anywhere

EC2 Security Group: Allow HTTP only from the ALB SG

Confirmed that direct public access to EC2 is blocked

4. Testing

Visited the ALB DNS name in a browser

Verified that traffic alternates between both instances

Confirmed that health checks report both instances as healthy



Challenges Encountered

No Internet Gateway / Route Table Issue

Initially, the VPC and instances did not have an Internet Gateway attached, so instances could not access the internet.

Added an IGW and updated the public route table to allow outbound traffic.

Subnet Availability for ALB

The ALB threw an error about subnet availability in one of the zones.

Added the correct subnet in the other availability zone to fix the deployment.

User-data Execution

Learned that user data only runs on first boot.

Corrected scripts and AMI selection to ensure web servers were installed properly.



What I Learned

How to deploy private EC2 instances behind an ALB with proper security groups

How Route Tables and Internet Gateways affect instance connectivity

How to use Target Groups and health checks to distribute traffic between instances

Troubleshooting deployment issues: subnet misconfiguration, missing IGW, and user-data errors

The importance of multi-AZ deployment for high availability



What I Built

VPC with public and private subnets

Two EC2 instances with unique web content

Application Load Balancer distributing traffic

Secure network setup: EC2s are only accessible via ALB

Fully tested setup with traffic alternating between instances