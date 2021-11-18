import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.core.IsNot.not;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Alert;
import org.openqa.selenium.Keys;
import java.util.*;
import java.net.MalformedURLException;
import java.net.URL;
public class Test {
  private WebDriver driver;
  private Map<String, Object> vars;
  JavascriptExecutor js;
  @Before
  public void setUp() {
    driver = new ChromeDriver();
    js = (JavascriptExecutor) driver;
    vars = new HashMap<String, Object>();
  }
  @After
  public void tearDown() {
    driver.quit();
  }
  @Test
  public void () {
    driver.get("https://www.booking.com/index.ru.html?label=gen173nr-1DCAEoggI46AdIM1gEaCWIAQGYASG4ARfIAQzYAQPoAQGIAgGoAgO4AqXR6IYGwAIB0gIkZjkyNzU3MTItOGMxYy00MDU5LTlhM2ItMWQwZWQ3MDIwNzgw2AIE4AIB;sid=0d4f5ba784a197f68b4b0219151d78d4;keep_landing=1&sb_price_type=total&");
    driver.manage().window().setSize(new Dimension(1552, 849));
    driver.findElement(By.cssSelector(".bui-tab__item:nth-child(4) .bui-tab__text")).click();
    driver.findElement(By.name("query")).click();
    driver.findElement(By.name("query")).sendKeys("милан");
    driver.findElement(By.cssSelector(".css-17fljn7:nth-child(1) > .css-9dv5ti:nth-child(2) .Text-module__root--variant-body_2___135oG")).click();
    driver.findElement(By.cssSelector("span > img")).click();
    driver.close();
  }
}
