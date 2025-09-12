FROM ruby:3.3

WORKDIR /app

# GemfileとGemfile.lockファイルを
# イメージのappディレクトリ内にコピー
COPY Gemfile* /app/

RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
