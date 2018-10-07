FROM gcr.io/k8s-trial-210301/erlang:20.3.8.5
MAINTAINER Masatoshi Itoh <masatoshi9953@gmail.com>
#RUN yum install -y epel-release
#RUN yum install -y nodejs npm git
# COPY package.json /src/package.json
# RUN cd /src; npm install --production
RUN git clone https://github.com/masatoshiitoh/erl-hello-app.git
RUN (cd erl-hello-app/src ; rebar3 as prod tar) \
	; mkdir rel-hello-app \
	; cd rel-hello-app \
	; tar xzpf ../erl-hello-app/src/_build/prod/rel/helloapp/helloapp-0.0.1.tar.gz
# && git checkout 5a874c
EXPOSE 8080
#CMD node node-hello-app/src/hello-app.js
CMD ["rel-hello-app/bin/helloapp-0.0.1", "foreground"]
