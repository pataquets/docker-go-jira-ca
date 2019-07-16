FROM pataquets/go-jira

RUN \
  sed -i 's/# ca_ES.UTF-8/ca_ES.UTF-8/' /etc/locale.gen && \
  grep -ve "^# " /etc/locale.gen | grep -ve "^$" | nl \
  && \
  echo "LANG=ca_ES.UTF-8" | tee /etc/default/locale && \
  DEBIAN_FRONTEND=noninteractive \
    dpkg-reconfigure locales
