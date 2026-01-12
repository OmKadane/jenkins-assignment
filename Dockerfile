# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all files from your folder to the container
COPY . /app

# Command to run your app
CMD ["python", "app.py"]
