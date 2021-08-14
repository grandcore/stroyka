FROM ruby:2.7.4
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

WORKDIR /src/

COPY Gemfile just-the-docs.gemspec ./ 
RUN gem install bundler && bundle install
EXPOSE ${PORT}

ENTRYPOINT ["jekyll", "serve", "--livereload", "-H", "0.0.0.0", "-P", "2000"]