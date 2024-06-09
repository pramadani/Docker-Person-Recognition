#!/bin/bash
apt update
apt install -y libgl1-mesa-glx
apt install -y libglib2.0-0
apt install -y python3-pip
pip3 install Flask
pip3 install numpy
pip3 install jsonpickle
pip3 install opencv-python

python3 flask_server.py
