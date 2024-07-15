FROM arm32v7/ubuntu:latest

# RUN <<EOF
# apk update
# apk add \
#   build-base \
#   gcc \
#   gdb \
#   vim \
#   bash
# EOF

RUN <<EOF
apt-get update
apt-get install -y \
  build-essential \
  gcc \
  gdb \
  vim \
  bash \
  binutils

rm -rf /var/lib/apt/lists/*
EOF

COPY . /lab
WORKDIR /lab
