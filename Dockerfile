FROM trustedshops/gitlabci-build-ruby:centos7

WORKDIR /workspace
COPY .ruby-version /workspace/.ruby-version
RUN /bin/bash -l -c "rvm install $(cat .ruby-version)" && \
    /bin/bash -l -c "rvm use $(cat .ruby-version) && gem install bundler" && \
    /bin/bash -l -c "echo 'source /usr/local/rvm/scripts/rvm' >> ~/.bashrc"
