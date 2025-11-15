FROM kalilinux/kali-rolling
LABEL maintainer="Jesus Palencia sinfallas@gmail.com"
LABEL build_date="2025-11-15"
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt -y dist-upgrade && apt -y install kali-linux-headless nano yersinia && apt clean && apt -y autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}
