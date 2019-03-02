# monitoring nginx with Prometheus
This Project shows how to monitor nginx on kubernetes cluster.
It was made as an exercise for Devicetone devops position.

## Getting Started
clone the repository by typing:
```
git clone https://github.com/dreckguy/devicetone-prometheus.git
```

### Prerequisites
You need to have docker and docker-compose installed.
If you use windows make sure you have powershell in order to use the test file.

### Installing
Install prometheus, nginx, and nginx-exporter by typing:
```
docker-compose up
```
Follow the link: http://localhost:9090
You should see prometheus dashboard

## Testing using powershell

If you have powershell type:
```
./test.ps1
```
Follow the link : http://localhost:9090/alerts
You should see the alert changing status when refreshing the page after 1 minute.

## testing without powershell
use your browser or curl to query nginx on http:localhost for 200 response.
use it on http://localhost/books for 404 resoinse.

follow this link to see nginx requests by status codes:
```
http://localhost:9090/graph?g0.range_input=1h&g0.expr=nginx_server_requests&g0.tab=1
```

It is reccommended to write your own os script in order to see alerting in action.
The Alert will fire if more then 50% of requests get an 4xx error code or if more then 50% of requests get 5xx error code.
please note that nginx-exporter query nginx as well and each of correct query is counted as 200 response.

## Built With
* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Author
**Ophir Haramaty** dreckguy@gmail.com
