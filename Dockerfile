FROM java:8
ENV foo bar
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get install -y ssh
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
