FROM ruby:3.2.0

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs

WORKDIR /app
COPY . . 

RUN bundle install --without development test
RUN npm install
RUN npm run build

CMD ["rails", "server", "-b 0.0.0.0"]
