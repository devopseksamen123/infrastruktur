# infrastruktur

Applikasjons repository: 
https://github.com/devopseksamen123/applikasjon

For å kjøre med travis:


    travis encrypt HEROKU_EMAIL="heroku email" --add env.global
    travis encrypt HEROKU_API_KEY="heroku api-nøkkel" --add env.global
    travis encrypt AWS_ACCESS_KEY_ID="aws access-key" --add env.global
    travis encrypt AWS_SECRET_ACCESS_KEY="aws secret-access-key" --add env.global
    travis encrypt STATUSCAKE_USERNAME="brukernavn" --add env.global
    travis encrypt STATUSCAKE_APIKEY="statuscake api-nøkkel" --add env.global
    travis encrypt OPSGENIE_API_KEY="opsgenie api-nøkkel" --add env.global
    
Commit og push til github repo så skal travis bygge og pipeline burde bli opprettet i heroku. 
Det skal også være satt opp infrastruktur for OpsGenie og StatusCake.     