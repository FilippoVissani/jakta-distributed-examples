FROM alpine:latest
RUN apk update; apk add openjdk11 openjdk17 git
RUN git clone -b tests https://github.com/FilippoVissani/jakta.git
WORKDIR $HOME/jakta/
RUN ./gradlew
CMD ./gradlew --console=plain :jakta-distributed:jakta-distributed-broker:run
