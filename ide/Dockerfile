FROM archlinux:latest AS extra-packages
COPY ./extra-packages /
RUN  pacman -Syy &&\
     pacman -Sy --noconfirm --needed - < /extra-packages

FROM extra-packages AS yay
COPY ./aur-packages /
RUN useradd sudo &&\
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers &&\
    useradd -m -G sudo yay

USER yay
WORKDIR /home/yay
RUN git clone "https://aur.archlinux.org/yay.git" ./aur-yay &&\
	cd ./aur-yay &&\
	makepkg -si --noconfirm --needed &&\
	rm -drf ./aur-yay

FROM yay AS yay-packages
COPY ./aur-packages /
RUN yay -Sy --needed < /aur-packages

FROM yay-packages AS cleanup
USER root
RUN pacman -Scc --noconfirm &&\
    rm -rf /var/cache/pacman/pkg/* &&\
    userdel yay

FROM cleanup
COPY nvim_config /etc/xdg/nvim/
WORKDIR /etc/xdg/nvim
RUN mkdir -p /etc/xdg/nvim
WORKDIR /etc/xdg/nvim
#RUN ln -s ./init.vim ./sysinit.vim &&\
RUN mkdir ./autoload &&\
    curl -fLo ./autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
