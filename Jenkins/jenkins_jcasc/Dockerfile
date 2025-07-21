FROM jenkins/jenkins:latest
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
# Copia il file dei plugin nella directory temporanea
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

# Installa i plugin usando jenkins-plugin-cli
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt


# Crea e copia un Job 
COPY jobs/my_jobs /usr/share/jenkins/ref/jobs/my_jobs



# Disabilita la schermata di login 
COPY disable-security.groovy /usr/share/jenkins/ref/init.groovy.d/disable-security.groovy