all: js test-cov clean

test:

test-cov: cov

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

.PHONY all test test-cov cov cov-clean js js-clean clean
