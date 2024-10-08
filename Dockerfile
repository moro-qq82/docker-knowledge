# Dockerfile for Knowledge

# FROM tomcat:jre8
FROM tomcat:9-jre8

# ==== dumb-init ====
RUN apt-get update && \
    apt-get install -y dumb-init && \
    apt-get clean

# ==== environment ====
RUN rm -rf /usr/local/tomcat/webapps/ROOT \
  && update-ca-certificates -f

# ==== add Knowledge ====
# ADD https://github.com/support-project/knowledge/releases/download/v1.13.1/knowledge.war \
#       /usr/local/to mcat/webapps/ROOT.war
ADD knowledge_reload4j.war /usr/local/tomcat/webapps/ROOT.war

VOLUME [ "/root/.knowledge" ]
EXPOSE 8080

CMD [ "dumb-init", "/usr/local/tomcat/bin/catalina.sh", "run" ]
