FROM alpine:3.3
ENV FLASK_APP=hello.py
ADD hello.py .
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && rm -rf /var/cache/apk/* && pip install flask
CMD ["python", "-m" ,"flask", "run", "--host=0.0.0.0"]
