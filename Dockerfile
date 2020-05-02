FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
    COPY . /app
    WORKDIR /app
    ENV FLASK_APP app.py
    RUN pip install gunicorn
    RUN chmod +x boot.sh
    EXPOSE 5000
    ENTRYPOINT ["./boot.sh"]