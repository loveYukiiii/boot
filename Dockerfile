
FROM java:8

MAINTAINER xwolf

ENV MIN_HEAP 512m
ENV MAX_HEAP 2048m

EXPOSE 8082

RUN mkdir /opt/jars
WORKDIR /opt/jars


ENV MODULE boot
ENV MODULE_VERSION 0.0.1-SNAPSHOT
ADD ./${MODULE}-${MODULE_VERSION}.jar /opt/jars

CMD java -jar -Xms${MIN_HEAP} -Xmx${MAX_HEAP}  \
     ${MODULE}-${MODULE_VERSION}.jar 

