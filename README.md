# FB-Automation
(1) To monitor logs and all systems, you need to first run scripts from the heml folder
1.  helm/elasticsearch.sh
2.  helm/filebeat.sh
3.  helm/kibana.sh
4.  helm/nfs-service.sh

By pre-installing the heml package manager 
https://helm.sh/docs/intro/install/

(2) Next, you should run the script 
-  deployall.sh

It also has comments inside on the launch.
Next, you need to create your own domain and potdomains for different parts of the system. 
So far, if you leave it on tagdesign you need to send us a new IP of your service, the IP will not do, you will need domains.
Or you need to configure it by IP - here you need to look separately at how to do it

(3) There are scripts for making changes to the code and redeploying
1.  redeploy_api.sh
2.  redeploy_producer.sh
3.  redeploy_worker.sh
4.  restart_api.sh
5.  restart_flower.sh
6.  restart_ingress.sh
7.  restart_producer.sh
8.  restart_queue.sh
9.  restart_screenshot.sh
10.  restart_worker.sh

They create a docker container and send it to the docker hub. So far, my rannovr is with public access.
You will also need to register another one.

(4) Database
The project has a db module
It has liquibase.properties, which specifies the base's creeds
pom.xml is a config of the maven collector
Beforehand,you need to install maven and run the command
https://www.javahelps.com/2017/10/install-apache-maven-on-linux.html

mvn liquibase:update it will roll all the structure of the base

And there are constants in the code - so it needs to be replaced with base creeds

## SQLALCHEMY_DATABASE_URI = 'postgresql://fbs_user:tagdesign2088@' + postgres_service_host +'/fbs'

To run the app in the local folder, there is docker-compose.yaml
You can run docker-compose up
