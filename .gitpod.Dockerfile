FROM gitpod/workspace-full

USER root

RUN set -eux; \
&& sudo echo "deb [trusted=yes] https://apt.fury.io/meilisearch/ /" | sudo tee /etc/apt/sources.list.d/fury.list \
&& apt update && apt install meilisearch-http
