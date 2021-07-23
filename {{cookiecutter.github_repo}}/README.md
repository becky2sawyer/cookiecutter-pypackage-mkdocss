# {{cookiecutter.package_name}}
{{cookiecutter.short_description}}

# User Guide
- [https://pypi.org/project/{{cookiecutter.package_name}}](https://pypi.org/project/{{cookiecutter.package_name}})
```python
$ pip install {{cookiecutter.package_name}}
$ {{cookiecutter.package_name}}-ping
> pong
```

# Developer Guide

## test
```
$ sh test.sh
================== test session starts ==================
platform darwin -- Python 3.6.10, pytest-6.1.2, py-1.9.0, pluggy-0.13.1
rootdir: /Users/diginori/myhub/github_repo/tests, configfile: ../pytest.ini
plugins: cov-2.12.1, celery-4.4.7, xdist-2.3.0, anyio-3.1.0, pylava-0.3.0, forked-1.3.0
collected 1 item

tests/{{cookiecutter.package_name}}/test_{{cookiecutter.package_name}}.py . [100%]

------------------- generated xml file: report/test/tests.xml -------------------

---------- coverage: platform darwin, python 3.6.10-final-0 ----------
Name                               Stmts   Miss  Cover
------------------------------------------------------
src/package_name/package_name.py       7      1    86%
------------------------------------------------------
TOTAL                                 12      1    92%

1 file skipped due to complete coverage.
Coverage XML written to file report/coverage/coverage.xml
```

## build
```
sh build.sh
```

## install
```
pip install {{cookiecutter.package_name}} -I --no-index --find-links ./dist/
```
```
pip install ./
```
```
pip install git+https://github.com/{{cookiecutter.github_account}}/{{cookiecutter.github_repo}}.git
```

## deploy - pypi
```
sh deploy_pip.sh
```

## publish - test
```
$ mkdocs serve
INFO     -  Building documentation...
INFO     -  MERMAID2  - Initialization arguments: {}
INFO     -  MERMAID2  - Explicit mermaid javascript library:
               https://unpkg.com/mermaid@8.7.0/dist/mermaid.min.js
INFO     -  Cleaning site directory
INFO     -  MERMAID2  - Found superfences config: {'custom_fences': [{'name': 'mermaid', 'class': 'mermaid', 'format': <function fence_mermaid at 0x103b24840>}]}
INFO     -  Documentation built in 0.69 seconds
INFO     -  [20:43:16] Serving on http://127.0.0.1:8000
```

## publish - github page
```
sh deploy_gitpage.sh
```
- [https://{{cookiecutter.github_account}}.github.io/{{cookiecutter.github_repo}}](https://{{cookiecutter.github_account}}.github.io/{{cookiecutter.github_repo}})

