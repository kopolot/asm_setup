FROM debian:bullseye-slim
RUN apt-get update && apt-get install -y locales build-essential  manpages-dev as31 nasm && rm -rf /var/lib/apt/lists/* \
	&& localedef -i pl_PL -c -f UTF-8 -A /usr/share/locale/locale.alias pl_PL.UTF-8
ENV LANG pl_PL.utf8 
RUN mkdir /home/debian/asm
CMD sleep infinity