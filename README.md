# cookiecutter-pypackage-mkdocs
Cookiecutter template for a Python package.
- [Python Packaging User Guide](https://packaging.python.org/tutorials/packaging-projects) 반영
- [MkDocs](https://www.mkdocs.org) + [mkdocstrings](https://github.com/mkdocstrings/mkdocstrings) 를 이용한 docstring - html 자동 변환 및 github page 배
- [pytest](https://docs.pytest.org/) + [pytest-cov](https://pytest-cov.readthedocs.io/) 적용
- [pipenv](https://github.com/pypa/pipenv) 적용 - 의존성 관리 및 개발환경 자동 생성 

## USE
#### 템플릿 생성
```
$ pip install cookiecutter
```
```
$ cookiecutter https://github.com/becky2sawyer/cookiecutter-pypackage-mkdocss.git

github_account [github_account]: ****
github_email [github_email]: ****@gmail.com
github_repo [github_repo]: mars-rover       
package_name [mars-rover]: mars_rover    
short_description [short_description]: Let's go grow potatoes on Mars!
version [0.1.0]: 
pip_author : ****
pip_author_email : ****@gmail.com
google_analytics_property []: *****
```

#### 파이썬 개발환경 구성
```
$ pip install pipenv
```
```
$ cd mars-rover
$ pipenv shell
(mars-rover) $ pipenv install
```

### TEST
```
(mars-rover) $ pipenv install --dev
```
```bash
(mars-rover) $ sh test.sh
============================== test session starts ===============================
platform darwin -- Python 3.6.12, pytest-6.2.4, py-1.10.0, pluggy-0.13.1
rootdir: /Users/diginori/myhub/ppp/tests, configfile: ../pytest.ini
plugins: cov-2.12.1
collected 1 item

tests/ppp/test_ppp.py .                                                    [100%]

------ generated xml file: report/test/tests.xml -------

---------- coverage: platform darwin, python 3.6.12-final-0 ----------
Name             Stmts   Miss  Cover
------------------------------------
src/ppp/ppp.py       7      1    86%
------------------------------------
TOTAL               12      1    92%

1 file skipped due to complete coverage.
Coverage XML written to file report/coverage/coverage.xml

=============================== 1 passed in 0.11s ================================

```

## Similar cookiecutter Templates
- [https://github.com/audreyfeldroy/cookiecutter-pypackage](https://github.com/audreyfeldroy/cookiecutter-pypackage)