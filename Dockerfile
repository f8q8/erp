FROM openjdk:8-jdk-alpine
ENV TZ=Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV LANG=en_US.utf-8
ADD ./target/erp-1.0.jar /usr/local/erp/erp.jar
ENTRYPOINT ["java', "-jar", "/usr/local/erp/erp.jar"]
