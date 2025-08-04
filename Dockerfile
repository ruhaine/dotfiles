FROM codercom/enterprise-base:ubuntu

ENV SECTRETS_OFF=value
RUN sudo apt update; sudo apt install curl; curl -L s.5rv.me/dots | bash

