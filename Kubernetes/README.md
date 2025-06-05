# Montare una Share NFS in un Pod Kubernetes (Volume Diretto + PVC nello stesso Pod)

## Descrizione dell'esercizio

L'obiettivo di questo esercizio è dimostrare **due modalità diverse di montaggio di una share NFS** all'interno di un **unico Pod Kubernetes**, al fine di comprendere le differenze pratiche tra:

1. **Volume NFS dichiarato direttamente nel Pod**: utile per configurazioni rapide o temporanee.
2. **Volume NFS montato tramite Persistent Volume e Persistent Volume Claim (PV/PVC)**: più adatto per ambienti di produzione o scenari più complessi dove è necessario un maggiore livello di astrazione.

### Obiettivi didattici

- Comprendere come Kubernetes può interfacciarsi con una share NFS.
- Differenziare tra il montaggio diretto e l'utilizzo di risorse persistenti (PV/PVC).
- Eseguire un Pod che monta **due directory distinte da uno stesso o diverso server NFS** con approcci diversi.
- Verificare l'accesso e il contenuto dei volumi montati dal Pod.

---

## Requisiti

- Cluster Kubernetes funzionante (minikube, kind, GKE, etc.)
- Server NFS accessibile dalla rete del cluster
- Percorsi NFS esportati e con permessi di accesso in lettura/scrittura per i nodi

---

```
<img width="578" alt="Screenshot 2025-06-05 alle 16 23 44" src="https://github.com/user-attachments/assets/0816657c-fb23-4bf6-824d-490df342b4ca" />
```
