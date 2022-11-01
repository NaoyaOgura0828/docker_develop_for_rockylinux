FROM rockylinux:9.0

# Execution user name after container startup
ARG USER_NAME=NaoyaOgura

# Repository Update
RUN dnf update -y

# sudo Install
RUN dnf install sudo -y

# Add User
RUN adduser ${USER_NAME} --badnames

# Setup to use sudo without password
RUN echo "${USER_NAME} ALL=NOPASSWD: ALL" | tee /etc/sudoers

ENTRYPOINT tail -f /dev/null