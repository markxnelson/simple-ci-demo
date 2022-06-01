FROM jenkins/jenkins:lts-jdk11

# install sqlcl
RUN cd /var/jenkins_home/ && \
    curl -o sqlcl-22.1.1.131.0820.zip https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-22.1.1.131.0820.zip && \
    unzip sqlcl-22.1.1.131.0820.zip && \
    rm sqlcl-22.1.1.131.0820.zip

ENV PATH="/var/jenkins_home/sqlcl/bin:${PATH}"