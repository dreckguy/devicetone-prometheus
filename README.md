# monitoring nginx with Prometheus
this Project shows how to monitor nginx on kubernetes cluster

## Getting Started
clone the repository by typing:
git clone https://github.com/dreckguy/devicetone-prometheus.git

### Prerequisites
You need to have docker and docker-compose installed.
If you use Windows make sure you have powershell in order to use the test file.

### Installing
install Prometheus, Nginx, and Nginx-exporter by typing:
docker-compose up

Follow the link: http://localhost:9090
You should see prometheus dashboard

## running the test using powershell

if you have powershell type:
./test.ps1

Follow the link : http://localhost:9090/alerts
You should see the alert changing status when refreshing the page after 1 minute.

## testing without powershell
use your browser or curl to query nginx on http:localhost for 200 response.
use it on http://localhost/books for 404 resoinse 

## Built With
* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Authors
* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
