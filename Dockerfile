FROM kalilinux/kali-rolling
LABEL maintainer="Jesus Palencia sinfallas@gmail.com"
LABEL build_date="2025-11-15"
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt -y dist-upgrade && apt -y install nginx libnginx-mod-stream kali-linux-headless nano yersinia apt-utils curl dnsutils file finger ffuf gobuster git hydra john less locate lsof man-db netcat-traditional nikto nmap proxychains4 python3 python3-pip python3-setuptools python3-wheel smbclient smbmap socat ssh-client sslscan sqlmap telnet tmux unzip whatweb vim zip && apt clean && apt -y autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}

EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
