# Gestione dei Conflitti di Indentazione in File YAML con Git

## Scenario

Due branch divergenti modificano lo stesso file YAML (`Esercizio_n4.yaml`), ma con indentazioni differenti:

- **Branch `master`:**

  ```yaml
  fruit:
    apple:
      macintosh:
    pear:
  ```
  
- **Branch `develop`:**
  ```yaml
  fruit:
    apple:
      macintosh:
      pear:
  ```
  ---
  ## 1. Perché si genera il conflitto?

Git esegue il merge confrontando le righe testuali.
Le differenze di indentazione alterano il contenuto della riga, quindi Git rileva linee diverse.
Di conseguenza, genera un conflitto perché non sa quale versione scegliere.

---
   ## 2. Come generare il conflitto?

Esegui:
```
git checkout origin/main
git merge develop
```
Se le differenze di indentazione sono rilevanti, Git segnalerà conflitti su Esercizio_n4.yaml.

---

   ## 3. Come evitare questo conflitto?

Mantenere un indentazione coerernte tra i branch.
processare i file con formatter automatici (es. yamllint, prettier) prima del commit.
Fare merge regolari e frequenti per limitare le divergenze.
Configurare .gitattributes con merge driver personalizzati per YAML.

---

   ## 4. È buona pratica evitare questi conflitti?

Sì, perché:

Riduce il tempo speso nella risoluzione di conflitti non funzionali.
Mantiene la leggibilità e coerenza dei file di configurazione.
Evita errori in pipeline CI/CD che dipendono dalla corretta indentazione.
Favorisce una collaborazione più fluida in team numerosi.

---

## Conclusione

Le differenze di indentazione generano conflitti perché Git confronta solo testo.
Adottare standard, strumenti e processi adeguati previene questi problemi, migliorando la qualità del codice e la produttività del team.
