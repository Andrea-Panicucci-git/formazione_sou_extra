#!groovy

import jenkins.model.*
import hudson.security.*

def instance = Jenkins.getInstanceOrNull()

if (instance != null) {
    println "-->  Disabilito completamente la sicurezza Jenkins"

    // Disattiva autenticazione
    instance.setSecurityRealm(null)

    // Disattiva autorizzazione (accesso libero)
    instance.setAuthorizationStrategy(new hudson.security.AuthorizationStrategy.Unsecured())

    instance.save()
} else {
    println "--> Jenkins non inizializzato, sicurezza non disabilitata"
}
