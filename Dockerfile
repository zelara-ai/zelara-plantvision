# Use the official Python 3.8 base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Uncomment the following line if you have a requirements.txt file and want to install dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# Expose port 80 to allow incoming connections
EXPOSE 80

# Set an environment variable
ENV NAME World

# Run the command "python ./hello_world.py" when the container starts
CMD ["python", "./hello_world.py"]
