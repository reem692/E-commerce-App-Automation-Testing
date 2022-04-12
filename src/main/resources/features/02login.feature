Feature: user could log in with valid email and password and could reset his/her password successfully

  Background: user opens browser
    And user navigates to login page

  Scenario: user could log in with valid email and password
    When user fills in email with "jane.doe@gmail.com" and password with "password"
    And user chooses remember me
    And user clicks on login button
  #Expected Result
    Then user could login successfully and goes to the home page

  Scenario: user could reset his/her password successfully
    When user clicks on Forget Password?
    And user types email "jane.doe@gmail.com"
    And user clicks on recover button
  #Expected Result
    Then user resets password successfully