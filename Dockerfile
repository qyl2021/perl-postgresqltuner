FROM debian:11.5
MAINTAINER Julien Francoz <julien-postgresqltuner@francoz.net>
RUN apt-get update \
 && apt-get install -y libdbd-pg-perl ssh \
 && apt-get clean
ADD postgresqltuner.pl /usr/bin/
ENTRYPOINT ["/usr/bin/postgresqltuner.pl"]
