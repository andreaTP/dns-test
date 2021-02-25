FROM adoptopenjdk/openjdk8:alpine

COPY DnsTest.java .
RUN javac DnsTest.java

ENTRYPOINT ["java", "DnsTest"]
