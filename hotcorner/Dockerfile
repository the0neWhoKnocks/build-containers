FROM ubuntu:22.04
RUN apt-get update
# https://github.com/christopherkobayashi/xfce4-hotcorner-plugin#build-requirements
RUN \
  DEBIAN_FRONTEND=noninteractive \
  TZ="America/Los_Angeles" \
  apt-get install -y build-essential intltool libgtk-3-dev libwnck-3-dev libnotify-dev libxfce4ui-2-dev libxfce4panel-2.0-dev xfce4-dev-tools xorg-dev
