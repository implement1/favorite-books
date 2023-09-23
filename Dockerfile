FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    python3.8 \
    python3-pip

RUN pip install flask && pip install requests && pip install flask_sqlalchemy && mkdir flask
COPY . /flask
WORKDIR flask
ENV FLASK_APP=application.py
ENV FLASK_ENV=development
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]