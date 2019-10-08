#!/usr/bin/env bash

git clone $1
cd $2
/opt/python/$3/bin/pip install --only-binary cryptography auditwheel cryptography twine
/opt/python/$3/bin/python setup.py bdist_wheel --python-tag=$4
auditwheel repair $(find . -iname "*.whl")
/opt/python/$3/bin/python -m twine upload $(find . -iname "*.whl") -u $PYPI_USERNAME -p $PYPI_PASSWORD
