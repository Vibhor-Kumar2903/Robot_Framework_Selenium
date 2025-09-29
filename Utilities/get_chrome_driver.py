from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options

class BrowserDriver:
    def __init__(self):
        self.driver = None

    def chrome_driver(self):
        chrome_options = Options()
        chrome_options.add_experimental_option("detach", True)
        chrome_options.add_experimental_option("excludeSwitches", ["enable-logging"])
        self.driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=chrome_options)
        return self.driver

    def close_chrome_driver(self):
        if self.driver:
            self.driver.close()
            self.driver = None

# Robot expects a global variable `ROBOT_LIBRARY_SCOPE`
ROBOT_LIBRARY_SCOPE = "GLOBAL"