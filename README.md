# Monitoring nginx with Prometheus
This Project shows how to monitor nginx on kubernetes cluster. \
It was made as an exercise for Devicetone devops position.

## Getting Started
Clone the repository by typing:
```
git clone https://github.com/dreckguy/devicetone-prometheus.git
```

### Prerequisites
You need to have docker and docker-compose installed.\
If you use windows make sure you have powershell in order to use the test file.

### Installing
Install the system by typing:
```
cd devicetone-prometheus
docker-compose up
```
This will run Prometheus container, nginx container, and nginx-exporter container. \
Prometheus will be configured by prometheus.yml and alerts.yml located in the config folder.
It will monitor response rate of the nginx container by using Nginx-exporter metrics page. \
This exporter uses nginx VTS module located in the specific nginx container and format its response to fit the Prometheus system.


In order to check if all containers are up and running follow the link: http://localhost:9090/targets \
You should see prometheus dashboard showing nginx and Prometheus endpoints with "Up" state.

### Testing using powershell

If you have powershell open another terminal and type:
```
.\test.ps1
```
This will enlarge 404 response rate by querying nginx with wrong address. 

Follow the link : http://localhost:9090/alerts \
You should see the alert changing status when refreshing the page after 1 minute.

### Testing without powershell
Use your browser or curl to query nginx on http://localhost for 200 response.\
Use it on http://localhost/books for 404 response.

Follow this link to see nginx status codes rates: \
http://localhost:9090/graph?g0.range_input=1h&g0.expr=nginx_server_requests&g0.tab=1

It is reccommended to write your own os script in order to see alerting in action.
The Alert will fire if more than 50% of requests get an 4xx error code or if more than 50% of requests get 5xx error code.
Please note that nginx-exporter query nginx as well and each of correct query is counted as 200 response.

## Built With
* [Prometheus](https://prometheus.io/) - The Monitoring tool
* [Nginx with VTS](https://hub.docker.com/r/gaciaga/nginx-vts/) - Docker image of Nginx configured with VTS module that shows status code rates.
* [Nginx-vts-exporter](https://hub.docker.com/r/sophos/nginx-vts-exporter/) - Docker image of Prometheus exporter of the VTS status response.

## Author
**Ophir Haramaty** dreckguy@gmail.com
