# Use the official Ruby image from the Docker Hub
FROM ruby:3.1.3

# Install dependencies
RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client

# Set up the working directory
WORKDIR /myapp

# Install gems
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

# Copy the rest of the application code
COPY . /myapp

# Set the default command to run when the container starts
CMD ["irb"]
