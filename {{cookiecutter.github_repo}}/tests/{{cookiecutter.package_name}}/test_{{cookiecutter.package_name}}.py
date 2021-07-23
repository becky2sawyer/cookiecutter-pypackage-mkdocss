import sys
import {{cookiecutter.package_name}}


def test_ping():
    sys.argv = ['foo', '10']
    {{cookiecutter.package_name}}.ping()

