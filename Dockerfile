FROM python:3.11.4

ENV WORK_DIR=/usr/local/etc/fundamentals-of-calculus-in-python

RUN pip install poetry

COPY . $WORK_DIR

RUN make -C $WORK_DIR install

WORKDIR $WORK_DIR
