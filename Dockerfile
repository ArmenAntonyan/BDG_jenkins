FROM ubuntu:latest
USER root
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  systemd systemd-sysv dbus dbus-user-session
RUN systemctl start nginx


 