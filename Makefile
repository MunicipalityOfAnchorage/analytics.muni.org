prod:
	bundle exec jekyll build

test:
	bundle exec jekyll build --config=_config.yml,_test.yml
	node ..\analytics-reporter\bin\analytics --output _site\data
	node ..\analytics-reporter\bin\analytics --csv --output _site\data

dev:
	bundle exec jekyll build --config=_config.yml,_development.yml
	
deploy:
	make prod
	net use "%ANALYTICS_PROD_SHARE%"
	-robocopy _site\ "%ANALYTICS_PROD_SHARE%" /e /xd fake-data /xx