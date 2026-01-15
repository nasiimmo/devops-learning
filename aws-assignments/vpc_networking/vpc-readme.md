<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>AWS Custom VPC Deployment</title>
</head>
<body>
  <h1>AWS Custom VPC Deployment</h1>

  <h2>Objective</h2>
  <p>Deploy a secure and highly available VPC environment with public and private subnets, EC2 instances, and a bastion host. Learn networking, routing, security groups, and private/public access configuration in AWS.</p>

  <h2>Tasks Completed</h2>

  <h3>1. VPC Setup</h3>
  <ul>
    <li>Created a custom VPC with CIDR block 10.0.0.0/16</li>
    <li>Created one public and one private subnet</li>
  </ul>

  <h3>2. Internet Access</h3>
  <ul>
    <li>Created and attached an Internet Gateway (IGW) to the VPC</li>
    <li>Allocated an Elastic IP</li>
    <li>Created a NAT Gateway in the public subnet using the Elastic IP</li>
  </ul>

  <h3>3. Route Tables</h3>
  <ul>
    <li>Created a public route table</li>
    <li>Added a default route (0.0.0.0/0) pointing to the Internet Gateway</li>
    <li>Associated the public route table with the public subnet</li>
    <li>Created a private route table</li>
    <li>Added a default route (0.0.0.0/0) pointing to the NAT Gateway and associated it with the private subnet</li>
  </ul>

  <h3>4. EC2 Instances</h3>
  <ul>
    <li>Launched a public EC2 instance in the public subnet with a public IP address</li>
    <li>Launched a private EC2 instance in the private subnet without a public IP address</li>
  </ul>

  <h3>5. Security Groups</h3>
  <ul>
    <li>Configured public EC2 security group to allow SSH and HTTP access only from my IP address</li>
    <li>Configured private EC2 security group to allow internal access only from the public EC2 instance or bastion host</li>
  </ul>

  <h3>Bastion Host</h3>
  <ul>
    <li>Deployed a bastion host in the public subnet to securely access the private EC2 instance</li>
  </ul>

  <h2>Challenges Encountered</h2>
  <ul>
    <li>Configuring proper routing for public and private subnets initially caused connectivity issues</li>
    <li>Ensuring security groups were restrictive enough to secure the private instance while allowing bastion access</li>
    <li>Deploying NAT Gateway and associating with private route table to allow outbound internet access for private instances</li>
  </ul>

  <h2>What I Learned</h2>
  <ul>
    <li>How to create a custom VPC with public and private subnets</li>
    <li>Routing traffic via Internet Gateway and NAT Gateway</li>
    <li>Configuring secure EC2 access using security groups and a bastion host</li>
    <li>Difference between public and private subnets in terms of internet connectivity</li>
  </ul>

  <h2>What I Built</h2>
  <ul>
    <li>Custom VPC with CIDR 10.0.0.0/16</li>
    <li>Public and private subnets with proper routing</li>
    <li>EC2 instances in both public and private subnets</li>
    <li>Bastion host for secure access to private EC2 instance</li>
    <li>Secure and functional network setup demonstrating AWS VPC fundamentals</li>
  </ul>
</body>
</html>
