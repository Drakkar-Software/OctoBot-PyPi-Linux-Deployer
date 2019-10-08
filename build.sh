#!/usr/bin/env bash

git clone $1
cd $2
/opt/python/$3/bin/pip install --only-binary cryptography auditwheel cryptography twine
/opt/python/$3/bin/pisp install -r requirements.txt
/opt/python/$3/bin/python setup.py bdist_wheel --python-tag=$4
auditwheel repair dist/$2*.whl
twine upload dist/$2*.whl -u $4 -p $5
