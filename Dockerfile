# Stage 1: Build the application
FROM ruby:3.0.2-slim-buster as builder

RUN mkdir -p /app
WORKDIR /app


RUN apt-get update -qq && apt-get install -yq \
    libpq-dev \
    ruby-dev \
    build-essential \
    postgresql \ 
    postgresql-contrib \
    && rm -rf /var/lib/apt/lists/*


COPY . .
COPY --chmod=775 --chown=root:root entrypoint.sh entrypoint.sh
RUN bundle install


FROM ruby:3.0.2-slim-buster AS runner
RUN apt-get update -qq && apt-get install -yq libpq-dev
WORKDIR /app
COPY --from=builder /usr/local/bundle/ /usr/local/bundle/
COPY . .
COPY --chmod=775 --chown=root:root entrypoint.sh entrypoint.sh
RUN bundle exec rails assets:precompile
EXPOSE 3000

ENTRYPOINT [ "/bin/bash", "-c", "/app/entrypoint.sh" ]