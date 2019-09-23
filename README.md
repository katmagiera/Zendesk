# Required software
Tests are based on Robot Framework, which requires Python and some its libraries, namely:
- Python 3.6+.
- Make sure that pip command relates to Python 3.6+, if both Pythons installed on your machine, and pip relates to Python 2.7, for installation use pip3.
- [Robot Framework last version](https://robotframework.org/). [Installation](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst).
- [Selenium library version 3.3.1+](https://pypi.org/project/robotframework-seleniumlibrary/).
- Chrome web browser
- [Chrome web driver compatible with browser](https://chromedriver.chromium.org/downloads)

You can install required python libraries by running `pip install -r requirements.txt`

## Executing
- Run tests: robot -d results -v LOGIN:{login} -v PASS:{pass}  Tests/ZendeskSell.robot

## Test description

The main test file is ZendeskSell.robot. It consists of all requested test cases and it uses resources directory with robot keywords.

After run test, you can check Results directory, where you find report.html and log.html. If any of test case fails, you can find there screenshots took on step which failed.