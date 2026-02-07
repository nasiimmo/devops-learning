# Docker learning
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
</head>
<body>

<h2>Building a Multi-Container Application with Flask & Redis</h2>

<h2>Overview</h2>
<p>
  This project is a multi-container application built using Docker and Docker Compose.
  It consists of a Python Flask web application and a Redis database.
  The Flask application connects to Redis to store and retrieve a visit counter.
</p>

<h2>What I Built</h2>
<ul>
  <li>A Flask web application with two routes:
    <ul>
      <li><code>/</code> – Displays a welcome message</li>
      <li><code>/count</code> – Increments and displays a visit counter stored in Redis</li>
    </ul>
  </li>
  <li>A Redis service used as a key-value store</li>
  <li>Dockerized services for Flask and Redis</li>
  <li>A Docker Compose setup to run both containers together</li>
  <li>Persistent storage for Redis using Docker volumes (bonus requirement)</li>
</ul>

<h2>Application Architecture</h2>
<ul>
  <li><strong>Flask Container</strong> – Handles HTTP requests and communicates with Redis</li>
  <li><strong>Redis Container</strong> – Stores the visit count</li>
  <li><strong>Docker Network</strong> – Allows containers to communicate using service names</li>
</ul>

<h2>My Approach</h2>
<ol>
  <li>Created a simple Flask application with two routes.</li>
  <li>Used the Python <code>redis</code> client to connect Flask to Redis.</li>
  <li>Dockerized the Flask application using a Python base image.</li>
  <li>Used the official Redis Docker image for the database.</li>
  <li>Configured Docker Compose to run both services together.</li>
  <li>Used service names from Docker Compose as hostnames for inter-container communication.</li>
  <li>Added a volume to Redis to persist data between container restarts.</li>
</ol>

<h2>Challenges Faced & How I Solved Them</h2>

<h3>1. Missing Python Dependencies</h3>
<p>
  Initially, the Flask application failed to run due to missing dependencies such as Flask
  and Redis-related packages.
</p>
<p>
  <strong>Solution:</strong> I updated the Dockerfile to explicitly install all required Python
  dependencies using <code>pip</code>.
</p>


<h3>2. Wrong File Being Executed in the Container</h3>
<p>
  Docker repeatedly showed the error:
  <code>python: can't open file 'app.py'</code>,
  even after I renamed the file.
</p>
<p>
  <strong>Cause:</strong> Docker Compose was reusing a cached image that still referenced
  the old <code>CMD</code>.
</p>
<p>
  <strong>Solution:</strong>
</p>
<ul>
  <li>Stopped all containers using <code>docker compose down</code></li>
  <li>Removed cached images</li>
  <li>Rebuilt everything using <code>docker compose up --build</code></li>
</ul>

<h3>3. Redis Hostname Errors</h3>
<p>
  The Flask app threw an error stating that the Redis host could not be found.
</p>
<p>
  <strong>Solution:</strong> Ensured both services were on the same Docker Compose network
  and confirmed Redis was running before Flask attempted to connect.
</p>

<h3>4. Persistent Data</h3>
<p>
  Restarting containers caused Redis data to reset.
</p>
<p>
  <strong>Solution:</strong> Added a Docker volume to persist Redis data across restarts.
</p>

<h2>What I Learned</h2>
<ul>
  <li>How Docker containers communicate using service names</li>
  <li>The importance of rebuilding images when Dockerfiles change</li>
  <li>How Docker Compose manages multi-container applications</li>
  <li>How Redis works as an in-memory data store</li>
  <li>How to debug container logs and networking issues</li>
  <li>Why containerized applications eliminate “it works on my machine” problems</li>
</ul>

<h2>How to Run the Application</h2>
<pre>
docker compose up --build
</pre>

<p>Then visit:</p>
<ul>
  <li><code>http://localhost:5000</code> – Welcome page</li>
  <li><code>http://localhost:5000/count</code> – Visit counter</li>
</ul>

<h2>Conclusion</h2>
<p>
  This project demonstrates a real-world multi-container setup using Flask and Redis.
  Through debugging dependency issues, container networking problems, and Docker caching
  behavior, I gained hands-on experience with containerized application development and
  orchestration using Docker Compose.
</p>

</body>
</html>

