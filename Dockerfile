# Use an official Python runtime as a parent image or starting image where custom layers are going to be built on top 
FROM python:3.6.1-alpine

# Installing flask to run this application
RUN pip install flask

# execute this application when the conatiner starts
CMD ["python","app2.py"]

#"RUN" executed at build time and it is a pert of the image
#"CMD" executed at run time , when we start our application using container

#copying our app.py file from local to new image layer
COPY app2.py /app2.py