FROM kalilinux/kali-rolling
LABEL maintainer="Jesus Palencia sinfallas@gmail.com"
LABEL build_date="2026-01-18"
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt -y dist-upgrade && apt -y install nginx libnginx-mod-stream nano apt-utils curl git man-db less locate lsof socat ssh-client dnsutils telnet tmux unzip vim zip && apt clean && apt -y autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}
RUN apt update && apt -y install kali-linux-headless && apt clean && apt -y autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}
RUN apt update && apt -y install yersinia metasploit-framework file finger ffuf gobuster hydra john netcat-traditional nikto nmap proxychains4 python3 python3-pip python3-setuptools python3-wheel smbclient smbmap sslscan sqlmap whatweb && apt clean && apt -y autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}

EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
