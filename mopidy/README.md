# Mopidy

This installation streams music to a pulseaudio server through a local socket.
The pulseaudio server [needs to be
configured](https://wiki.archlinux.org/title/PulseAudio/Examples#Allowing_multiple_users_to_share_a_PulseAudio_daemon)
to expose the socket at a predefined location: `/tmp/pulseaudio.socket`.
