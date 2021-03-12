start:
	minikube --memory 8192 --cpus 4 start 

install-postgres:
	helm install -f postgres/postgres.yaml postgresql bitnami/postgresql

delete-postgres:
	helm delete postgres