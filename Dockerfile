FROM python:3.4

RUN groupadd uwsgi && useradd -g uwsgi uwsgi
RUN pip install Flask==0.11 uWSGI==2.0.13 requests==2.5.1 redis==2.10.3
WORKDIR /app
COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191
USER uwsgi

ENTRYPOINT ["/cmd.sh"]
