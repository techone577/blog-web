FROM carsharing/alpine-oraclejdk8-bash
VOLUME /tmp
ADD blog-web-0.0.1-SNAPSHOT.war blogweb.war
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/blogweb.war"]