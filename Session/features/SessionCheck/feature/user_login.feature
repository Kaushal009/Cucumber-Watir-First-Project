Feature: Gmail login and logout feature

  Scenario: Verify if user able to login to gmail
    Given that user is at gmail homepage https://gmail.com/
    When I enter email
    And  Click on Next button
    Then I enter password
    And  Click on Password Next button
    When I click on Profile image
    Then I click on Sign out button
 # Scenario: Verify if user is able to logout from gmail
  #  Given I am on https://mail.google.com/mail/u/0/#inbox page
 #   When I click on Profile image
 #   Then I click on Sign out button