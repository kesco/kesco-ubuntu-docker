# kesco-ubuntu-docker
# Version 0.1.0

FROM ubuntu:rolling

ENV DEBIAN_FRONTEND=noninteractive

ADD sources.list /etc/apt/
RUN apt-get update && apt-get install -y apt-utils
RUN apt-get dist-upgrade -y
RUN apt-get install git tmux python build-essential xz-utils openjdk-8-jdk zsh -y
RUN git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
    && chsh -s /bin/zsh
