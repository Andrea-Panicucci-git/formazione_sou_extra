FROM jenkins/jenkins:lts-jdk17

USER root

RUN jenkins-plugin-cli --version

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

COPY jenkins.yaml /usr/share/jenkins/ref/jenkins.yaml
COPY entrypoint.sh /usr/local/bin/jenkins-custom-entrypoint.sh
RUN mkdir -p /usr/share/jenkins/ref/job/my_job
COPY job/my_job/ /usr/share/jenkins/ref/job/my_job/
RUN chmod +x /usr/local/bin/jenkins-custom-entrypoint.sh

USER jenkins
ENTRYPOINT ["/usr/local/bin/jenkins-custom-entrypoint.sh"]
