FROM archlinux:latest

# Update and install packages
RUN pacman-key --init && pacman-key --populate archlinux
RUN pacman -Syu --noconfirm
RUN pacman -Sy --noconfirm coreutils base-devel vim openssh

# Copy files
RUN mkdir -p /root/bin
COPY files/install=* /tmp
COPY files/update-devcontainer /root/bin
COPY files/.zshrc /root/.zshrc

# Run install scripts
RUN /tmp/install-zsh
RUN /tmp/install-node
RUN /tmp/install-git

# Cleanup non-sharable pacman keys
RUN rm -rf /etc/pacman.d/gnupg

ENTRYPOINT [ "zsh" ]
