TIMEOUT := 1200s
PREFIX := elasticsearch

repo-add:
	helm repo add elastic https://helm.elastic.co

install:
	helm upgrade --install --values primary.yaml $(PREFIX)-primary elastic/elasticsearch
	helm upgrade --install --values data.yaml $(PREFIX)-data elastic/elasticsearch

delete:
	helm delete $(PREFIX)-primary
	helm delete $(PREFIX)-data

delete-volumes:
	kubectl delete pvc --all
	kubectl delete pv --all
