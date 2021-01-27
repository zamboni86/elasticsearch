name = elasticsearch

pull:
	docker pull docker.elastic.co/elasticsearch/elasticsearch:7.9.2
	docker pull kibana:7.9.2

run:
	docker run -d --name $(name) -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.9.2
	docker run -d --link elasticsearch -p 5601:5601 kibana:7.9.2
	
start:
	docker start $(name)
	docker start kibana
	
stop:
	docker stop $(name) || echo '$(name) container is not running...'
	docker stop kibana || echo 'kibana container is not running...'

clean:
	$(MAKE) stop
	docker container rm $(name) || echo '$(name) not found'
	docker container rm kibana || echo '$(name) not found'

ssh-elastic:
	docker exec -it $(name) bash

ssh-kibana:
	docker exec -it kibana bash
