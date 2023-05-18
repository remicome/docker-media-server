FROM python:3.9-alpine
RUN apk add --no-cache gcc python3-dev py3-pip
RUN apk add --no-cache py3-gst gst-plugins-ugly gst-plugins-good
RUN python3 -m pip install --upgrade mopidy
