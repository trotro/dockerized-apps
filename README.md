Scripts to run linux commands in docker containers
Inspired by [docker compose scripts](https://github.com/docker/compose/tree/master/script) and [@jfrazelle dockerfunc](https://github.com/jfrazelle/dotfiles/blob/master/.dockerfunc)

# Requirements
Obviously docker engine needs to be installed before using these scripts

Intend to replace cygwin by some usefull docker containers.
Your docker-machine needs to be set up before using these tools.

# env in PowerShell
To register your docker-machine env, launch:
```PowerShell
 > Import-Module <PATH\TO\env.psm1>
 ```
## env.psm1
This file defines commands' calls.

# RUN
To run an app, call it as you'll do on linux:
```drill –x 8.8.8.8```
or
```rsync CHANGES.md CHNGES.copy```

CHANGES :
•	Corrected errors in scripts // des scripts ne fonctionnait pas du tout
•	Removed scoped functions // dans ssh et scp y avait des fonctions de définies mais jamais appelées
•	Converted remaining .bat files to .ps1 // comme convenu, j’ai tout passé en ps1 et supprimé les .bat

TODO
Le top du top serait de faire un système de « catch all » qui lorsque qu’une commande appelée n’existe pas localement catch l’erreur Powershell et tente de construire à la volée un Dockerfile et un ps1 basés sur un template tout simple (voir les scripts ps1 et Dockerfile, la seule variable serait le nom de la commande) en utilisant le système de package de alpine. On injecte ensuite une nouvelle fonction dans le scope pour rendre accessible la nouvelle commande (ça implique à coup sûr d’être dans un sous-process Powershell pour pouvoir récupérer les erreurs qui remontent vers le parent sinon c’est impossible à faire).

Sinon l’alternative la plus simple serait de faire un système de package qui génère le Dockerfile et le ps1 en se basant sur un template en vérifiant au préalable que le package existe bien dans alpine (ou au pire tant pis pour les cas non gérés, ça sortira simplement une erreur disant que le package n’a pas été trouvé). Une fois le Dockerfile et le ps1 générés, il suffirait juste au module env.psm1 de générer par découverte des scripts locaux  (il suffirait de lister les ps1 tout simplement) une fonction qui est exportée dans le scope globale comme c’est fait manuellement pour le moment.

