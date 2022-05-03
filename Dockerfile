# syntax=docker/dockerfile:1.2
FROM debian:stable-20220418-slim

LABEL org.label-schema.vcs-url="https://github.com/frbayart/check-version-gh-action/"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
