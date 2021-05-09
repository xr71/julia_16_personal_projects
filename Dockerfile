FROM julia:1.6.1-buster

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install zsh git sudo vim emacs neovim htop neofetch

EXPOSE 1234

ENTRYPOINT ["bash"]
