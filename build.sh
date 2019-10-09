#!/usr/bin/env bash

cd /project
/opt/python/$1/bin/pip install --only-binary cryptography auditwheel cryptography twine
/opt/python/$1/bin/python setup.py bdist_wheel --python-tag=$2
auditwheel repair /project/$(find dist -iname "*.whl")
/opt/python/$1/bin/python -m twine upload /project/$(find wheelhouse -iname "*.whl") -u $PYPI_USERNAME -p $PYPI_PASSWORD
