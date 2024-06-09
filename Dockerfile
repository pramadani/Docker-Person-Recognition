FROM python:3.9-slim

WORKDIR /app

COPY flask_server.py ./
COPY haarcascade_frontalface_default.xml ./

RUN apt update
RUN apt install -y libgl1-mesa-glx 
RUN apt install -y libglib2.0-0
RUN pip3 install Flask
RUN pip3 install numpy
RUN pip3 install jsonpickle
RUN pip3 install opencv-python

CMD ["python3", "flask_server.py"]