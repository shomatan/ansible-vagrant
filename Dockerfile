FROM zabbix/zabbix-web-nginx-mysql:ubuntu-3.2.6

MAINTAINER Shoma Nishitateno <shoma416@gmail.com>

RUN apt-get update && \
        apt-get -y install fonts-ipafont && \
        update-alternatives --install /usr/share/zabbix/fonts/graphfont.ttf zabbix-frontend-font /usr/share/fonts/opentype/ipafont-gothic/ipagp.ttf 50 && \
        update-alternatives --set zabbix-frontend-font /usr/share/fonts/opentype/ipafont-gothic/ipagp.ttf && \
        apt-get -y install curl