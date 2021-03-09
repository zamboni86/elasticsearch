TIMEOUT := 1200s
PREFIX := elasticsearch

repo-add:
	helm repo add elastic https://helm.elastic.co

install:
	helm upgrade --install --values primary.yaml $(PREFIX)-primary elastic/elasticsearch

delete:
	helm delete $(PREFIX)-primary

delete-volumes:
	kubectl delete pvc --all
	kubectl delete pv --all
