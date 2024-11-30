FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND teletype
COPY cups.zip /cups.zip
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN apt-get update && apt-get install -y printer-driver-all cups sudo && useradd -s /bin/bash -d /home/cup -m cup && mkdir -p /home/cup /run/cups && chown cup:cup /home/cup && chown cup:cup -R /var/spool/cups /var/cache/cups /var/cache/cups/rss /run/cups /var/spool/cups/tmp /etc/cups && usermod -aG lpadmin cup && echo "cup:cup" | sudo chpasswd && echo "cup ALL=(ALL:ALL) NOPASSWD: /usr/sbin/chpasswd" | sudo tee /etc/sudoers.d/cup
USER cup
WORKDIR /home/cup
ENTRYPOINT ["/entrypoint.sh"]
