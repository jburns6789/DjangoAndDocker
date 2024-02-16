# Pull base image
FROM python:3.11

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /dockerHWdemo

# Install dependencies
COPY Pipfile Pipfile.lock /dockerHWdemo/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /dockerHWdemo/

