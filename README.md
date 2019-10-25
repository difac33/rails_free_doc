# README

* Ruby version 2.5.1
* Rails version 5.2.3

------

<h2>FreeDoc</h2>

On crée une base de données pour un site sur le modèle Doctolib avec des docteurs et des patients, qui peuvent prendre rendez-vous ensemble.

<b>Tables</b>

Les différentes tables : 
* `doctors`
* `patients`
* `cities`
* `appointments`
* `specialties`
* `doctor_specialties`

<b>Relations</b>

1-to-n :
* `cities` - `doctors`
* `cities` - `patients`
* `cities` - `appointments`

n-to-n :
* `doctors` - `patients` (liés par `appointments`)
* `doctors` - `specialties` (liés par `doctor_specialties`)

--------

Fait en utilisant les ressources de <a href="https://www.thehackingproject.org" target="_blank">The Hacking Project</a>
