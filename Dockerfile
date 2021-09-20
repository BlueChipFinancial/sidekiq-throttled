FROM bluechipfinancial/ruby-1.9:1.9.3-2021.05.20.01

WORKDIR /app

COPY . /app

RUN bundle install -j $(nproc)
RUN printf '#!/bin/sh\nexit 0' > /usr/sbin/policy-rc.d
#RUN apt-get update && apt-get install -y redis

CMD "bash"