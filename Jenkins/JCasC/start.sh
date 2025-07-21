#!/bin/bash

# Aggiorna pacchetti
apt-get update -y

# Installa Docker
apt-get install -y docker.io

# Abilita e avvia Docker
systemctl enable docker
systemctl start docker

# Crea volume persistente
docker volume create jenkins-data

# Copia i file Jenkins nella VM
cp -r /vagrant/jenkins /home/vagrant/jenkins

# Costruisci l'immagine Jenkins custom
cd /home/vagrant/jenkins
docker build -t myjenkins:casc .

# Avvia Jenkins (evita duplicati)
docker rm -f jenkins || true
docker run -d --name jenkins \
  -p 8080:8080 \
  -e ADMIN_PASSWORD=admin123 \
  -v jenkins-data:/var/jenkins_home \
  myjenkins:casc
