Feature: Logged user could select different Categories, could filter with color and could select different tags.

  Background: user opens browser
    And user moves to login page
    And user enters "jane.doe@gmail.com" and "password"
    And user clicks on button to login

  Scenario: logged user could select different Categories
    When user selects category Electronics
    And user selects subcategory Cell phones
  #Expected Result
    Then user gets all cellphones shown

  Scenario: logged user could filter with color
    When user selects category Apparel
    And user selects subcategory Shoes
    And user selects color red
  #Expected Result
    Then user gets all offered red shoes
    And user selects color grey
    And user gets all offered red and grey shoes

  Scenario: logged user could select different tags
    When user selects category Computers
    And user selects tag compact
  #Expected Result
    Then user gets all products tagged with compact
    And user selects tag camera
    And user gets all products tagged with camera