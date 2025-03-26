# Use Python 3.9 slim image as the base
# slim version reduces the image size by excluding unnecessary packages
FROM python:3.9-slim

# Set the working directory inside the container to /app
# This is where our application code will live
WORKDIR /app

# Copy all files from the current directory (.) to /app in the container
# This includes our application code, requirements.txt, and other files
COPY . /app

# Install all Python dependencies listed in requirements.txt
# This step happens during image build, not at runtime
RUN pip install -r requirements.txt

# Specify the command to run when the container starts
# This will run our Flask application
# The application will be accessible on port 5000
CMD ["python", "app.py"]