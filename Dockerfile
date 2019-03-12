# compass image
# runs compass within a container
FROM ubuntu:18.04
MAINTAINER François Zaninotto <francois+docker@marmelab.com>

ENV HOME /root

RUN apt-get update -qq

# install ruby
RUN apt-get install -y -qq ruby-dev libffi-dev make ssh rsync

# install compass
RUN gem install --no-rdoc --no-ri compass

WORKDIR /srv

ENTRYPOINT ["compass"]
