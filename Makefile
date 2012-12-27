all: test-cov clean

test-cov: cov
	mocha-phantomjs -R json-cov http://localhost:4000/test/client/cov | json2htmlcov > client/static/coverage.html

cov: js
	rm -rf client/code/app-cov
	jscoverage client/code/app-js client/code/app-cov

cov-clean:
	rm -rf client/code/app-cov

js:
	livescript -b -c -o client/code/app-js client/code/app
	cp client/code/app/entry.js client/code/app-js/entry.js

js-clean:
	rm -rf client/code/app-js

clean: cov-clean js-clean

.PHONY: all test-cov cov cov-clean js js-clean clean
