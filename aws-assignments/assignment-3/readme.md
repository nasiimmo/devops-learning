<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AWS S3 Static Website + CloudFront + Route53</title>
</head>
<body>

<h1>AWS S3 Static Website + CloudFront CDN + Route53</h1>

<h2>Objective</h2>
<p>Create a production-ready static website deployed on AWS using:</p>
<ul>
  <li><strong>S3</strong> for hosting</li>
  <li><strong>CloudFront</strong> for CDN + HTTPS</li>
  <li><strong>Route53</strong> for domain routing</li>
</ul>
<p>This project demonstrates a common AWS DevOps workflow for hosting scalable and secure static websites.</p>

<h2>Tasks Completed</h2>

<h3>1. Static Website Bucket</h3>
<ul>
  <li>Created an S3 bucket</li>
  <li>Enabled Static Website Hosting</li>
  <li>Uploaded <code>index.html</code> and <code>error.html</code></li>
  <li>Configured bucket policy to make objects publicly readable</li>
</ul>

<h3>2. CloudFront Distribution</h3>
<ul>
  <li>Set the origin to the <strong>S3 website endpoint</strong></li>
  <li>Enabled HTTPS for secure content delivery</li>
  <li>Enabled compression for objects</li>
  <li>Applied <code>CachingOptimized</code> cache policy</li>
  <li>Configured default behaviour to allow <code>GET</code> and <code>HEAD</code> requests</li>
  <li>Optional: Associated an ACM certificate for a custom domain</li>
</ul>

<h3>3. Route53 Setup</h3>
<ul>
  <li>Created a hosted zone for the domain</li>
  <li>Added an A record (Alias) pointing to the CloudFront distribution</li>
  <li>Confirmed the domain resolves to the CloudFront CDN endpoint</li>
</ul>

<h3>4. Testing</h3>
<ul>
  <li>Visited the domain to confirm CloudFront serves the website</li>
  <li>Tested caching by editing <code>index.html</code> and invalidating the CloudFront cache</li>
  <li>Verified that updates appeared after cache invalidation</li>
</ul>

<h2>What I Built</h2>
<ul>
  <li>A fully functional S3 static website hosting environment</li>
  <li>CloudFront distribution to serve content globally with HTTPS</li>
  <li>Route53 DNS routing to map a custom domain to the CloudFront distribution</li>
  <li>Proper bucket policies and permissions to allow public access safely</li>
</ul>

<h2>What I Learned</h2>
<ul>
  <li>The difference between S3 bucket endpoint vs website endpoint for CloudFront</li>
  <li>How CloudFront caching works and why invalidation is important</li>
  <li>Setting up HTTPS via CloudFront and integrating ACM certificates</li>
  <li>Using Route53 for DNS routing to a CDN</li>
  <li>Handling object permissions with bucket policies for secure public access</li>
</ul>

<h2>Challenges & How I Solved Them</h2>
<ul>
  <li><strong>Access Denied / Error Page Showing:</strong> 
    <ul>
      <li>CloudFront was serving <code>error.html</code> instead of <code>index.html</code></li>
      <li>Fixed by ensuring the origin used the <strong>S3 website endpoint</strong> and that bucket policy allowed public read access</li>
    </ul>
  </li>
  <li><strong>Cache Issues:</strong>
    <ul>
      <li>Even after fixing the index.html, CloudFront still served cached content</li>
      <li>Resolved by invalidating the distribution cache</li>
    </ul>
  </li>
  <li><strong>Route53 / Custom Domain Issues:</strong>
    <ul>
      <li>Free tier accounts sometimes cannot fully test domain routing</li>
      <li>Confirmed testing works directly with CloudFront distribution URL first</li>
    </ul>
  </li>
</ul>

<h2>Conclusion</h2>
<p>This project demonstrates a professional AWS workflow for static websites. By combining S3, CloudFront, and Route53, I gained practical experience in hosting, caching, security, and DNS management — all essential skills for a DevOps engineer.</p>

</body>
</html>
