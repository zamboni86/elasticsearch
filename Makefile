name = elasticsearch

pull:
	docker pull docker.elastic.co/elasticsearch/elasticsearch:7.9.2

run:
	docker run --detach --name $(name) -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.9.2

stop:
	docker stop $(name) || echo '$(name) container is not running...'
		
clean:
	$(MAKE) stop
	docker container rm $(name) || echo '$(name) not found'

ssh:
	docker exec -it $(name) bash
