# This Dockerfile starts with a Python 3 parent image. 
# The parent image is modified by adding a new code directory. 
# The parent image is further modified by installing the Python requirements defined in the requirements.txt file.
#
FROM python:3
ENV PYTHONUNBUFFERED=1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/