# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application code to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose the port the app runs on
EXPOSE 5000

# Set the default command to run the app
CMD ["python", "app.py"]

