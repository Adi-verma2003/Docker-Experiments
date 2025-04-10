📌 Prerequisites
✅ Install Docker on your system.

✅ Ensure Docker is running.

✅ Create an SQL initialization script (e.g., Aditya_demo.sql) with database and table definitions.

📂 Project Directory Structure
Ensure your project directory is organized as follows:

pgsql
Copy
Edit
project-directory/
│── Dockerfile
│── Aditya_demo.sql
This structure keeps all necessary files in one place for an efficient setup.

🛠 Step 1: Create a Dockerfile
Create a Dockerfile in your project directory:

dockerfile
Copy
Edit
# 🏗 Use the official MySQL image
FROM mysql:latest

# 📂 Copy initialization script to the container
COPY Aditya_demo.sql /docker-entrypoint-initdb.d/

# 🔥 Expose MySQL port
EXPOSE 3306
📜 Step 2: Create an SQL Initialization Script
Create a file named Aditya_demo.sql in the same directory:

sql
Copy
Edit
CREATE DATABASE Aditya;
USE Aditya;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

INSERT INTO students (name, age) VALUES ('Alice', 22), ('Bob', 24);
🏗 Step 3: Build the Docker Image
Run the following command to build the Docker image:

sh
Copy
Edit
docker build -t mysql-custom .  
💡 This command creates a custom MySQL image named mysql-custom.

🚀 Step 4: Run MySQL Container
To start a MySQL container using the custom image and set the root password, execute:

sh
Copy
Edit
docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=root -d mysql-custom
🧐 Explanation:
🏷 Creates a container named mysql-container.

🔐 Sets the root password to root.

🏃 Runs the container in detached mode (-d).

🛠 Uses the custom MySQL image mysql-custom.

🔍 Step 5: Access the Running Container
To enter the running container’s shell:

sh
Copy
Edit
docker exec -it mysql-container bash
💡 This command opens an interactive terminal session inside mysql-container.

💻 Step 6: Connect to MySQL
Once inside the container, access MySQL using:

sh
Copy
Edit
mysql -u root -p
🔑 Enter the root password (root) when prompted.

🏗 Step 7: Verify Database and Tables
After logging into MySQL, check the available databases:

sql
Copy
Edit
SHOW DATABASES;
🔄 Switch to the Aditya database:

sql
Copy
Edit
USE Aditya;
📊 Query the students table:

sql
Copy
Edit
SELECT * FROM students;
🎉 Conclusion
🎯 You have successfully set up MySQL in a Docker container with an initialization script. This method ensures that the database is automatically initialized with predefined schemas and data when the container starts. 🚀 Happy coding! 🎨