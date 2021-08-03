# cookiecutter-pypackage-mkdocs
Cookiecutter template for a Python package.

## 무엇이 가능한가?
1. 자동 파이썬 환경 구성
1. 테스트 주도 개발 (TDD)
1. pip 팩키지 개발 및 배포
1. 자동화된 문서화 및 서버리스 배포 운영 & 구글 애널리틱스 지원
![배포예시](https://user-images.githubusercontent.com/10396850/126817668-b6aada4c-9221-4e11-8ece-728823463f33.png)

## 본 템플릿을 사용한 프로젝트
- [https://pypi.org/project/marsrover](https://pypi.org/project/marsrover/)
- [https://pypi.org/project/dokdo](https://pypi.org/project/dokdo/)

   
## 사용기술
- [Python Packaging User Guide](https://packaging.python.org/tutorials/packaging-projects) 반영
- [MkDocs](https://www.mkdocs.org) + [mkdocstrings](https://github.com/mkdocstrings/mkdocstrings) 를 이용한 docstring - html 자동 변환 및 github page 배
- [pytest](https://docs.pytest.org/) + [pytest-cov](https://pytest-cov.readthedocs.io/) 적용
- [pipenv](https://github.com/pypa/pipenv) 적용 - 의존성 관리 및 개발환경 자동 생성 

## USE
#### 템플릿 생성
```
pip install cookiecutter
```
```
cookiecutter https://github.com/becky2sawyer/cookiecutter-pypackage-mkdocss.git
```
```bash
github_account [github_account]: ****
github_email [github_email]: ****@gmail.com
github_repo [github_repo]: mars-rover       
package_name [mars-rover]: marsrover    
short_description [short_description]: go grow potatoes on Mars!
version [0.1.0]: 
pip_author : ****
pip_author_email : ****@gmail.com
google_analytics_property []: *****

# marsrover 는 각자 생성한 package-name 으로 바꾸어 수행 및 기타 정보는 사용자 정보로 입력
# pip_author 는 https://pypi.org/account/register/ 에서 등록후 사용 
# google_analytics_property 는 https://analytics.google.com 에서 "측정 ID" 를 생성하여 입력(옵션)
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

### BUILD
```
sh build.sh
```

### DEPLOY PIP - LOCAL TEST
```bash
$ pip install .
$ marsrover-ping
pong
$ marsrover-ping 3
pppong
# marsrover 는 각자 생성한 package-name 으로 바꾸어 수행
```

### DEPLOY PIP ( 설정 : setup.cfg )
```
sh deploy_pip.sh
```

### PUBLISH GITHUB PAGES ( 설정 : mkdocs.yml )
```
sh deploy_gitpage.sh
```
![deploy_gitpage](https://user-images.githubusercontent.com/10396850/126817668-b6aada4c-9221-4e11-8ece-728823463f33.png)



## Similar cookiecutter Templates
- [https://github.com/audreyfeldroy/cookiecutter-pypackage](https://github.com/audreyfeldroy/cookiecutter-pypackage)
