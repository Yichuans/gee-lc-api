# Use an official Python runtime as a parent image
FROM ubuntu:16.04

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN apt update -y
RUN apt install -y python python-pip


RUN pip install --upgrade pip
RUN pip install earthengine-api
RUN pip install google-api-python-client
# RUN python -c "from oauth2client import crypt"
RUN pip install pyCrypto

# Jupyter and extension
RUN pip install ipyleaflet \
  && jupyter nbextension enable --py --sys-prefix ipyleaflet

# NEED THIS despite being deprecated `ee` still uses it
RUN pip install --upgrade oauth2client

# Make port 80 available to the world outside this container
EXPOSE 8888

# Define environment variable
# ENV NAME World

# when the container launches
CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888", "--no-browser", "--allow-root"]