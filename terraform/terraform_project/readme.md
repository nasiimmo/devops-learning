<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      color: #333;
    }
    h1, h2, h3 {
      colour: #222;
    }
    code {
      background: #f4f4f4;
      padding: 2px 5px;
      border-radius: 3px;
      font-family: monospace;
    }
    ul {
      margin-left: 20px;
    }
  </style>
</head>
<body>

  <h1>Assignment 1 – Deploy WordPress Using Terraform</h1>

  <h2>Objective</h2>
  <p>The goal of this assignment was to use <strong>Terraform</strong> to deploy a full WordPress stack on AWS, demonstrating end-to-end infrastructure provisioning and automation.</p>

  <h2>Infrastructure Overview</h2>
  <p>The setup I implemented includes:</p>
  <ul>
    <li>An <strong>EC2 instance</strong> running WordPress</li>
    <li>Appropriate <strong>security groups</strong> to allow web traffic</li>
    <li>Cloud-init (user data) for installing and configuring <strong>Apache</strong> and all dependencies on launch</li>
    <li>A working <strong>public endpoint</strong> accessible via a web browser</li>
    <li>All resources fully provisioned and managed via <strong>Terraform</strong></li>
  </ul>

  <h2>Terraform Code Structure</h2>
  <p>The Terraform code has been designed to be <strong>DRY</strong> and maintainable:</p>
  <ul>
    <li>Variables are defined in <code>variables.tf</code> and configured via <code>terraform.tfvars</code></li>
    <li>Resources such as the EC2 instance, security groups, and IAM roles are modularised where appropriate</li>
    <li>User data scripts for cloud-init are separated into external <code>.yaml</code> files and referenced in the EC2 configuration</li>
    <li>This structure allows for easy modifications and reusability of code across environments</li>
  </ul>

  <h2>Challenges Encountered</h2>
  <p>During deployment, I initially experienced issues with the EC2 instance booting, where the WordPress site displayed <em>"Error establishing a database connection"</em>. This was caused by incomplete setup in the user data script. I resolved this by researching best practices and examples on Stack Overflow and updating the cloud-init YAML to ensure all dependencies were installed correctly on first boot.</p>

  <h2>Lessons Learned</h2>
  <ul>
    <li>Understanding how cloud-init scripts interact with EC2 on Linux</li>
    <li>Writing modular, DRY Terraform code using variables and <code>.tfvars</code> files</li>
    <li>Debugging real-world infrastructure issues using AWS logs and community resources</li>
    <li>The importance of automating full stack deployments to save time and reduce manual errors</li>
  </ul>

  <h2>Conclusion</h2>
  <p>This assignment has demonstrated how Terraform can manage infrastructure end-to-end, including automated software provisioning via user data. The final deployment is robust, maintainable, and accessible via a public endpoint. The experience has strengthened my understanding of infrastructure-as-code principles and practical cloud automation using AWS.</p>

</body>
</html>