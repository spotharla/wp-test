# This is to demonstrate the 2 parts of given test:


Please refer to K8_Deploy_process.docx for Part 1 Question

For Part 2 Question:

Please refer to the kubernetes deployment manifest files for more info.


this Wordpress app can be deployed with below commands in new namespace

its got these files as mentioned below which will create and deploy mysqldb, wordpress and redis deployment, expose service along with PVC for mysql

mysql-db-deployment.yaml
redis-cache-deployment.yaml
wp-app-deployment.yaml
kustomization.yaml

k apply -k ./ -n wp-dev


please refer to dockerfile and docker-compose.yaml for more info

