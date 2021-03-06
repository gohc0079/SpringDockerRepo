FROM openjdk:11.0-jre-slim

ADD demo-0.0.1-SNAPSHOT.jar app.jar

RUN sh -c 'echo spring.data.mongodb.uri=mongodb://mymongodb:27017/test > application.properties'
RUN sh -c 'echo apiinfo.host_name: x-rapidapi-host >> application.properties'
RUN sh -c 'echo apiinfo.host_value: apidojo-yahoo-finance-v1.p.rapidapi.com >> application.properties'
RUN sh -c 'echo apiinfo.key_name: x-rapidapi-key >> application.properties'
RUN sh -c 'echo apiinfo.key_value = ccfb007929msh6d298a8b0ccee59p11d9e7jsne32da6975ce0 >> application.properties'
RUN sh -c 'echo apiinfo.url = https://apidojo-yahoo-finance-v1.p.rapidapi.com >> application.properties'

EXPOSE 8080

ENTRYPOINT java -jar /app.jar
