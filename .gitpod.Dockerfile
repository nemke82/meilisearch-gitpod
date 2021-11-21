FROM gitpod/workspace-full

USER root

RUN set -eux;
RUN sudo echo "deb [trusted=yes] https://apt.fury.io/meilisearch/ /" | sudo tee /etc/apt/sources.list.d/fury.list \
&& apt-get update \
&& apt-get install meilisearch-http
