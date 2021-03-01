start:
	minikube --memory 8192 --cpus 2 start 

install-postgres:
	helm install -f postgres/postgres.yaml example bitnami/postgresql

delete-postgres:
	helm delete example-postgres