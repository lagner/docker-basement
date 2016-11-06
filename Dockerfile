FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    cowsay vim mc git silversearcher-ag

RUN echo 'root:toor' | chpasswd

ENV worker batman
ENV workdir /basement

RUN useradd -s /bin/bash -d ${workdir} ${worker}
RUN usermod -a -G sudo,users,plugdev ${worker}

COPY entrypoint.sh /usr/local/bin/basement-entrypoint

USER ${worker}

COPY gitconfig  ${workdir}/.gitconfig
COPY vimrc  ${workdir}/.vimrc
COPY vim    ${workdir}/.vim

ENTRYPOINT ["basement-entrypoint"]
CMD ["/bin/bash"]
