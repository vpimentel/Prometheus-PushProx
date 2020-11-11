FROM docker-registry.safra.com.br/pix/enderecamento:1.0.55-dev

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN apk add --update --no-cache py-pip
RUN pip3 install supervisor
COPY pushprox-client /app/pushprox-client
COPY start_push_client.sh /app/start_push_client.sh
COPY start_autbank.sh /app/start_autbank.sh
COPY supervisord.conf /etc/supervisord.conf
ENTRYPOINT []
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

