from Utilities.get_chrome_driver import BrowserDriver
from selenium.webdriver.common.by import By


class PageValidation(BrowserDriver):
    def __init__(self):
        super().__init__()
        self.driver = self.chrome_driver()

    def go_to_url(self, url):
        return self.driver.get(url)

    def get_title(self):
        return self.driver.title

    def get_element_by_id(self, id_locator):
        return self.driver.find_element(By.ID, id_locator)

    def click_on_element(self, locator):
        element = self.get_element_by_id(locator)
        element.click()







