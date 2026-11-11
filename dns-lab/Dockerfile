FROM dockurr/dnsmasq
ENV DNS1="1.1.1.1"
ENV DNS2="8.8.8.8"
COPY dnsmasq.d/ /etc/dnsmasq.d/
COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
