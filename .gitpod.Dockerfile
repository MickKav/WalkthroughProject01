# .gitpod.Dockerfile

# Use an official Python runtime as a parent image
FROM python:3.8.15

# Set the working directory in the container
WORKDIR /workspace

# Copy the local requirements.txt file to the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the content of the local directory to the container
COPY . .

# Make port 8080 available to the world outside this container
EXPOSE 8080
