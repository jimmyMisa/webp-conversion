FROM ubuntu

RUN apt update && \
	apt install -y webp

RUN mkdir -p /var/www/run/
RUN mkdir -p /var/www/application/

COPY ./install/ /var/www/install/

RUN chmod -R +x /var/www/install/

RUN /var/www/install/install.sh && \
	/var/www/install/install-npm.sh && \
	/var/www/install/install-project.sh

COPY run /var/www/run
COPY run/profile.sh /profile.sh

RUN chmod -R +x /profile.sh

WORKDIR /var/www/application/
