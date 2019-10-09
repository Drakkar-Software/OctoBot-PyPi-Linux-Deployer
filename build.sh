#!/usr/bin/env bash

cd /project
/opt/python/$2/bin/pip install --only-binary cryptography auditwheel cryptography twine
/opt/python/$2/bin/python setup.py bdist_wheel --python-tag=$3
auditwheel repair /project/$(find dist -iname "*$1*.whl")
/opt/python/$2/bin/python -m twine upload /project/$(find wheelhouse -iname "*$1*.whl") -u $PYPI_USERNAME -p $PYPI_PASSWORD --skip-existing
