FROM jupyter/datascience-notebook:latest

USER root

RUN apt-get update \
  && python3 -m pip install \
    HASS-data-detective==1.0 \
    homeassistant \

  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

USER $NB_UID
