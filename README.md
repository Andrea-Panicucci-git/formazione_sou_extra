# Jenkins Pipeline con Parametro 
## Descrizione:
Questa pipeline Jenkins utilizza un parametro chiamato `ENVIRONMENT` per scegliere tra due ambienti: `DEVELOPMENT` e `PRODUCTION`.
---

## Come funziona

1. **Definizione del parametro**: La pipeline chiede all'utente di selezionare un ambiente all'inizio della build. Le opzioni sono:
   - `DEVELOPMENT`
   - `PRODUCTION`
   
2. **Esecuzione della logica condizionale**: Dopo aver selezionato l'ambiente, la pipeline esegue uno script che verifica il valore del parametro `ENVIRONMENT`. 
   - Se l'utente ha scelto `DEVELOPMENT`, verrà stampato il messaggio:  
     ```Environment selected: DEVELOPMENT```
   - Se l'utente ha scelto `PRODUCTION`, verrà stampato il messaggio:  
     ```Environment selected: PRODUCTION```

3. **Output**: A seconda del valore scelto, la pipeline stampa a schermo il messaggio relativo all'ambiente selezionato




## Come utilizzare la pipeline

1. Crea un nuovo job di tipo Pipeline in Jenkins.
2. Incolla il codice della pipeline nel campo "Pipeline Script" del job.
3. Quando avvii la build, clicca su "Build with Parameters".
4. Nella finestra che appare, seleziona l'ambiente desiderato (DEVELOPMENT o PRODUCTION).
5. Clicca su "Build" per avviare la pipeline.
