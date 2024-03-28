
#
# default
#
.PHONY: default
default: app/dev

#
# application
#
.PHONY: app/dev
app/dev: css/build web/serve

.PHONY: app/test
app/test:
	cutest ./test/**/*_test.rb

#
# web
#
.PHONY: web/serve
web/serve:
	rackup

#
# assets
#
.PHONY: assets/build
assets/build: css/build js/build

#
# javascripts
#
.PHONY: js/build
js/build:
	@echo 'build javascripts'

.PHONY: js/copy
js/copy:
	cp assets/js/* public/js

#
# stylesheets
#
.PHONY: css/build
css/build:
	bun --bun run postcss assets/css/app.css -o public/css/app.css
	# bun --bun run tailwindcss -i assets/css/app.css -o public/css/app.css

.PHONY: css/minify
css/minify:
	bun tailwindcss -c tailwind.config.js -i assets/css/app.css -o public/css/app.css --minify

.PHONY: css/watch
css/watch:
	bun tailwindcss -c tailwind.config.js -i assets/css/app.css -o public/css/app.css --watch

#
# images
#
.PHONY: img/copy
img/copy:
	cp assets/img/* public/img

#
# generators
#
.PHONY: gen/migration
gen/migration:
	ruby lib/generators/migration.rb $(name)

.PHONY: gen/model
gen/model:
	ruby lib/generators/model.rb $(name)

.PHONY: gen/route
gen/route:
	echo "ruby lib/generators/route.rb $(name)"

#
# database
#
.PHONY: db/create
db/create:
	touch db/picklerally.db

.PHONY: db/drop
db/drop:
	rm db/picklerally.db

.PHONY: db/migrate
db/migrate:
	sequel -m db/migrate sqlite://db/picklerally.db

.PHONY: db/seed
db/seed:
	ruby db/seeds.rb

.PHONY: db/reset
db/reset: db/drop db/create db/migrate db/seed

