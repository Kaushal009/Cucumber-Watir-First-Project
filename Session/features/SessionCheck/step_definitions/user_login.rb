require "watir"

Given(/^that user is at gmail homepage https:\/\/gmail\.com\/$/) do
  @LoginPage = LoginPage.new(@browser)
  @LoginPage.visit
end

When(/^I enter email$/) do
  @LoginPage.enterEmail("kaushal.rahul210@gmail.com")
end

And(/^Click on Next button$/) do
  @LoginPage.clickNextButton
end

Then(/^I enter password$/) do
  @LoginPage.enterPassword("Inder009")
end

And(/^Click on Password Next button$/)do
  @LoginPage.clickPNextButton
end

#Given(/^User is logged into the gmail https:\/\/gmail\.google\.com\/mail\/u\/0\/#inbox\/$/)do |title|
  #expect(page).to have tite("Inbox (32) - kaushal.rahul210@gmail.com - Gmail")
#end

#Given(/^I am on https:\/\/mail\.google\.com\/mail\/u\/0\/#inbox\/ page $/) do |tite|
 # expect("Inbox (32) - kaushal.rahul210@gmail.com - Gmail").to have tite("Inbox (32) - kaushal.rahul210@gmail.com - Gmail")
#end
When(/^I click on Profile image$/)do
  @LoginPage.clickbtnProfile
end

Then(/^I click on Sign out button$/)do
  @LoginPage.clickbtnSignOut
end