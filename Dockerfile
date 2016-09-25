FROM python:2

MAINTAINER Daniel Kristiyanto <danielkr@uw.edu>


WORKDIR /app
RUN pip install elasticsearch
RUN pip install kafka-python

ADD app/insight.py /app/insight.py

CMD python /app/insight.py