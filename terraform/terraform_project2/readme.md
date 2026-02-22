<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Assignment 2 – EC2 Deployment with Cloud-Init</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      max-width: 800px;
      margin: 40px auto;
      padding: 0 20px;
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

  <h1>Assignment 2 – EC2 Deployment with Cloud-Init</h1>

  <h2>Objective</h2>
  <p>The goal of this assignment was to configure a <strong>cloud-init</strong> file and use <strong>Terraform</strong> to automate the deployment of an EC2 instance on AWS. The instance is intended to come fully configured on boot, with no manual steps required.</p>

  <h2>Infrastructure Overview</h2>
  <p>The deployment implemented includes:</p>
  <ul>
    <li>An <strong>EC2 instance</strong> running Linux</li>
    <li>Cloud-init YAML to install and configure <strong>Apache</strong> on boot</li>
    <li>Automation via Terraform, passing the cloud-init file as <code>user_data</code></li>
    <li>Security groups configured to allow HTTP traffic</li>
    <li>Fully automated setup with the instance ready-to-use immediately after launch</li>
  </ul>

  <h2>Terraform Code Structure</h2>
  <p>The Terraform code has been written to be <strong>DRY</strong> and maintainable:</p>
  <ul>
    <li>Variables defined in <code>variables.tf</code> and configured via <code>terraform.tfvars</code></li>
    <li>Resources such as EC2 instance and security groups are modular and clearly structured</li>
    <li>Cloud-init YAML is external and passed via the <code>user_data</code> attribute</li>
    <li>This structure allows for easy reuse and future modifications</li>
  </ul>

  <h2>Challenges Encountered</h2>
  <p>Apache initially failed to start automatically on the EC2 instance. This was resolved by refining the cloud-init YAML to ensure all packages were installed correctly and Apache started reliably on first boot, making the instance fully operational without manual intervention.</p>

  <h2>Lessons Learned</h2>
  <ul>
    <li>How cloud-init automates software installation on Linux EC2 instances</li>
    <li>Best practices for passing user data via Terraform</li>
    <li>Writing modular and maintainable Terraform code using variables and <code>.tfvars</code></li>
    <li>Debugging automated provisioning and service startup issues</li>
    <li>Importance of fully automated deployments for consistency</li>
  </ul>

  <h2>Conclusion</h2>
  <p>This assignment demonstrates the use of Terraform and cloud-init to fully automate the provisioning of a Linux EC2 instance. The instance comes online fully configured with Apache installed and running, highlighting practical knowledge of infrastructure automation, scripting, and maintainable code practices.</p>

</body>
</html>