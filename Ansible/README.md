# Ansible Playbook - Gestione Pacchetti e Utenti

## Scopo
Questo progetto include due playbook Ansible:

1. **Gestione pacchetti**: installa o disinstalla una lista di pacchetti in base a un dizionario di configurazione.
2. **Creazione utenti**: crea utenti sul sistema utilizzando una lista di dizionari che specificano attributi come gruppo, home directory e shell.

## Struttura
- `lista_pacchetti.yml`: gestisce l'installazione/disinstallazione dei pacchetti.
- `gruppi_dizionari.yml`: crea utenti con parametri personalizzati.

## Requisiti
- Ansible installato
- Accesso SSH ai nodi target
- Privilegi sudo (per gestione pacchetti e utenti)

## Esecuzione
```bash
ansible-playbook install_packages.yml
ansible-playbook create_users.yml
```
