# This is to demonstrate the 2 parts of given test:

Note: these deployment service files are exposed as Nodeport to test it in docker-desktop / minikube 
  which can be further added with ingress controller and ingress resources in prod cluster for e.g: hosted on gcp-gke cloud

Please refer to K8_Deploy_process.docx for Part 1 Question

For Part 2 Question:

Please refer to the kubernetes deployment manifest files for more info.

This Wordpress app can be deployed with below command making use of kustomization.yaml file in new namespace e.g: wp-dev
k apply -k ./ --namespace wp-dev

Its got these files as mentioned below which will create and deploy mysqldb, wordpress and redis deployment, expose service along with PVC for mysql.

secret.yaml
configmap.yaml
kustomization.yaml
mysql-db-deployment.yaml
mysql-pv-claim.yaml
mysql-service.yaml
redis-cache-deployment.yaml
redis-service.yaml
wp-app-deployment.yaml
wp-pv-claim.yaml
wp-service.yaml

Note: secrets and configmap on this are mentioned as templates which can be used if still needed but i have included them in kustomization.yaml

Please refer to dockerfile and docker-compose.yaml to demonstrate the same as docker-compose command

