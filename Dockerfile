# downloading python libaries for this app
FROM python:3.7
#updating ubunutu server
RUN apt-get update -y 

#copying file in app directory in container from current directory
COPY ./ /app

#defining work directory
WORKDIR /app
#run pipline of flask frame
RUN pip install flask

# ENTRYPOINT instruction is used to set executables that will always run when the container is initiated

ENTRYPOINT [ "python" ]

# execute the program
CMD [ "run.py" ]
