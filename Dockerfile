FROM python:3.10-alpine

WORKDIR PYTHONDONTWRITEBYTECODE=1 /
        PYTHONUNBUFFERED=1

COPY . .

RUN apk add - - update - -no-cache - - virtual .tmp-build-deps \
    gcc libc-dev linux-headers postgresql - dev && \
    pip install - -no-cache-dir -r requirements. txt

