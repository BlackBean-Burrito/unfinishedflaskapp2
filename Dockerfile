# python 3.7
FROM python:3.7
# create working directory
WORKDIR /home
# copy files across
COPY . /home
# install dependencies
RUN apt update -y
RUN pip3 install -r requirements.txt

# expose port
EXPOSE 5000

# create entry point
ENTRYPOINT python3 app.py
