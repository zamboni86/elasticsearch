TIMEOUT := 1200s
PREFIX := elasticsearch

install:
	helm upgrade --wait --timeout=$(TIMEOUT) --install --values primary.yaml $(PREFIX)-primary elastic/elasticsearch

delete:
	helm delete $(PREFIX)-primary
