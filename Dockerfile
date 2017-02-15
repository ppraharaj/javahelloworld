FROM java:7
#COPY HelloWorld.java /
ADD src /home/ubuntu/javahelloworld/src
ADD src /home/ubuntu/javahelloworld/myapp/src
WORKDIR /home/ubuntu/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
#RUN java -cp bin HelloWorld 
#ENTRYPOINT ["java","HelloWorld"]
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
MAINTAINER Docker Training <education@docker.com>
ENV JAVA_HOME /usr/bin/java
ENV APP_PORT 8080
ENV FOO bar
#ADD src myapp/src


