FROM kalilinux/kali-rolling
LABEL org.opencontainers.image.authors="sinfallas@gmail.com"
ENV DEBIAN_FRONTEND="noninteractive"

RUN apt update && apt -y dist-upgrade && apt clean && apt -y autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}
RUN apt update && apt -y install mcp-kali-server zmap yersinia metasploit-framework file finger ffuf gobuster hydra john netcat-traditional nikto nmap proxychains4 python3 python3-pip python3-setuptools python3-wheel smbclient smbmap sslscan sqlmap whatweb  kali-linux-headless systemd-standalone-sysusers dbus-system-bus-common nginx libnginx-mod-stream nano apt-utils curl git man-db less locate lsof socat ssh dnsutils telnet tmux unzip vim zip && apt clean && apt -y autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}

EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
ARG BUILD_DATE
LABEL org.opencontainers.image.created=$BUILD_DATE
