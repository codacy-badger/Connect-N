# Follow below commands before launching docker
# git clone https://github.com/Kartikei-12/Connect-N
# cd Connect-N-master
# docker build -t connect-n .
# docker run -i connect-n

FROM python:3.7
# The first parameter 'main.py' is the name of the file on the host.
# The second parameter '/' is the path where to put the file on the image.
# Here we put the file at the image root folder.

WORKDIR /project
COPY ./requirements.txt /project/requirements.txt
RUN pip install -r requirements.txt
COPY . /project
CMD ["python", "/project/main.py"]
