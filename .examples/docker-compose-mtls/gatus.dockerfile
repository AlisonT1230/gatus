# Add CA cert to gatus
FROM twinproduction/gatus:latest

COPY certs/server/ca.crt /usr/local/share/ca-certificates/test.crt

RUN cat /usr/local/share/ca-certificates/test.crt >> /etc/ssl/certs/ca-certificates.crt
