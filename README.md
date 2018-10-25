# Remind me

Pour mettre des alarmes pour se souvenir de faire des choses dans un moment !

## Installation
* Installer les fichier dans `$HOME/.config/remind`
* Créer un fichier `remind` dans le dossier
* Copier `remindme.sh` dans `/usr/bin/remindme`
* Ajouter un crontab `* * * * * remindme update`

## Utilisation
Il suffit de lancer

`remindme [time] [msg]`

par exemple

`remindme 10 Boire le café`

Pour se rappeler de boire son café dans 10 minutes
