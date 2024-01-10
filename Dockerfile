# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the container to /noteshare
WORKDIR /noteshare

# Define environment variable
ENV DATABASE_HOST db-universityconnect-1.czrgvjlrcl4g.us-east-1.rds.amazonaws.com
ENV DATABASE_USERNAME postgresadmin
ENV DATABASE_PASSWORD 5*ET-kc]Q4v7
ENV DATABASE_NAME noteshare
ENV DATABASE_PORT 5432

# Copy the current directory contents into the container at /noteshare
COPY . /noteshare

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5001 available to the world outside this container
EXPOSE 5001

# Define environment variable
ENV FLASK_APP=app.py
ENV EMAIL_USER="dhruvsavaliya314@gmail.com"
ENV EMAIL_PASS="JKshg\$#9428870602\$#"

# Run app.py using the Flask server when the container launches
CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]

