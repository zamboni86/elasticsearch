start:
	minikube --memory 8192 --cpus 2 start 

install-elasticsearch:
	helm install -f elasticsearch/elasticsearch.yaml elasticsearch elastic/elasticsearch

delete-elasticsearch:
	helm delete elasticsearch

install-postgres:
	helm install -f postgres/postgres.yaml postgresql bitnami/postgresql

delete-postgres:
	helm delete postgres

install-rabbitmq:
	helm install -f rabbitmq/rabbitmq.yaml rabbitmq bitnami/rabbitmq

delete-rabbitmq:
	helm delete rabbitmq
