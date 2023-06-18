.PHONY: up
up:
	docker compose up -d

.PHONY: stop
stop:
	docker compose stop

.PHONY: ps
ps:
	docker ps

.PHONY: shell
shell:
	docker compose exec rails /bin/bash

.PHONY: rails
rails:
	rails s -p 3000 -b '0.0.0.0'

# RubyMineDebug
.PHONY: debug
debug:
	bundle exec rdebug-ide --host 0.0.0.0 --port 1234 -- bin/rails s -p 3000 -b '0.0.0.0'
