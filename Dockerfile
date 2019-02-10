FROM ruby:2.4.1

RUN gem install cassandra-web

ADD entrypoint.sh /

RUN chmod a+x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
