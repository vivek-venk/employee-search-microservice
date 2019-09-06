#++++++++++++++++++++++++++++++++++++++
# Ubuntu 14.04 PHP-Nginx Docker container
#++++++++++++++++++++++++++++++++++++++

FROM tomcat:latest

# Install nginx

# Deploy scripts/configurations
ADD /target/EmployeeSearchService-0.0.1-SNAPSHOT.jar EmployeeSearchService-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar", "EmployeeSearchService-0.0.1-SNAPSHOT.jar"]

EXPOSE 80
EXPOSE 8080
EXPOSE 443
EXPOSE 8090

#CMD ["supervisord"]
