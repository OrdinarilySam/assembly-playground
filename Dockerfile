# FROM arm64v8/ubuntu:focal

# FROM armarchlinux/archlinux:latest

# # Update the package list and install essential packages
# RUN <<EOF 
# pacman -Sy --noconfirm
# pacman -S --noconfirm \
#   base \
#   base-devel
# EOF

# Optionally install other packages you need
# RUN pacman -S --noconfirm some-package

FROM arm32v7/alpine:latest

RUN apk update && apk add --no-cache bash gcc gdb musl-dev
# RUN <<EOF
# apk update
# apk add \
#   build-base \
#   gcc \
#   gdb \
#   vim \
#   bash
# EOF

# RUN <<EOF
# pacman -Syu
# EOF

# ENV DEBIAN_FRONTEND=noninteractive

# RUN <<EOF
# apt-get update
# apt-get install -y \
#   build-essential \
#   gcc \
#   gdb \
#   vim \
#   bash \
#   binutils \
#   gcc \
#   software-properties-common \


# rm -rf /var/lib/apt/lists/*
# EOF

# add-apt-repository universe
# apt-get update
# apt-get install -y \
#   gcc-multilib-arm-linux-gnueabi

COPY . /lab
WORKDIR /lab
