PROJECT=./example_project


clean:
	find -name "*.pyc" -delete
	find . -name ".DS_Store" -delete
	rm -rf .tox
	rm -rf MANIFEST
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info


test:
	python $(PROJECT)/manage.py test contenteditable_test


.PHONY: clean test