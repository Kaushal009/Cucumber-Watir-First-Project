class LoginPage
  #attr_accessor :txtUsername,:txtPassword,:btnLogin

  def initialize(browser)

    @browser = Watir::Browser.new :chrome

    @txtEmail = @browser.text_field(:id => "identifierId")

    @btnNext = @browser.element(:xpath => "//*[@id='identifierNext']/content/span")

    @txtPassword = @browser.text_field(:xpath => "//*[@id='password']/div[1]/div/div[1]/input")

    @btnPNext = @browser.element(:xpath => "//*[@id='passwordNext']/content")

    @btnProfile = @browser.element(:xpath => "//*[@id='gb']/div[1]/div[1]/div[2]/div[5]/div[1]/a/span")

    @btnSignOut = @browser.element(:xpath => "//*[@id='gb_71']")

  end

  def visit
    @browser.goto"https://gmail.com/"
    @browser.window.maximize
  end

  def enterEmail(email)
    @txtEmail.set email
  end

  def clickNextButton
    @btnNext.click
    sleep 3
  end

  def enterPassword(password)
    @txtPassword.set password
    sleep 3
  end

  def clickPNextButton
    @btnPNext.click
    sleep 3
  end

 # def visit
   # @ @browser.goto"https://mail.google.com/mail/u/0/#inbox"
 # browser.window.maximize
   # sleep 3
 # end

  def clickbtnProfile
    @btnProfile.click
    sleep 3
  end

  def clickbtnSignOut
    @btnSignOut.click
    sleep 3
  end
end
