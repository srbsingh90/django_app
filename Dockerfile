# Use an official Python runtime as a parent image
FROM python:3.10.5

# Set environment variables to avoid prompts during package installations
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
# EXPOSE 8080

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

