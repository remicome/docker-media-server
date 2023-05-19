# syntax=docker/dockerfile:1
FROM python:3.9-alpine

# Pulseaudio client
RUN apk add --no-cache pulseaudio
COPY pulseaudio_client.conf /etc/pulse/client.conf

# Mopidy install
RUN apk add --no-cache --virtual build-dependencies \
    gcc musl-dev \
    python3-dev py3-cairo-dev gobject-introspection-dev \
    py3-pip
RUN apk add --no-cache libsoup py3-gst gst-plugins-ugly gst-plugins-good
RUN python3 -m pip install --upgrade PyGObject
RUN python3 -m pip install --upgrade mopidy mopidy-iris
RUN python3 -m pip install --upgrade yt-dlp ytmusicapi mopidy-youtube
COPY mopidy.conf /root/.config/mopidy/mopidy.conf
RUN apk del build-dependencies

CMD mopidy
