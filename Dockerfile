FROM kong/kong-gateway:3.4

# Required for Kong to pipe logs to /dev/stdout and /dev/stderr
USER root

ARG KONG_DECLARATIVE_CONFIG
ENV KONG_DECLARATIVE_CONFIG=$KONG_DECLARATIVE_CONFIG

ADD kong.yaml kong.dev.yaml ./kong/declarative/
