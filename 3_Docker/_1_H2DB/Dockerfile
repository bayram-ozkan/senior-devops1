#Image
FROM  openjdk:21

#ARG
#ARG JAR_FILE=*jar
#Build edilmiş java dilindeki uygulamamız
ARG JAR_FILE=SeniorFullStack1.jar


#ADD
#Dosyanın docker image içinde blog.jar olarak adlandıracak yolu belirtir.
#SeniorFullStack1.jar dosyası, konteynerde blog.jar olarak yer alacaktır.
ADD ${JAR_FILE} blog.jar


ENTRYPOINT [ "java", "-jar", "/blog.jar"]