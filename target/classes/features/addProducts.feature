Feature: Logged user could add different products to Shopping cart, could add different products to Wishlist and could add different products to compare list

  Background: user opens browser
    And user enters the login page
    And user keys in "jane.doe@gmail.com" and "password"
    And user could click the login button

  Scenario: logged user could add different products to Shopping cart
    When user clicks on Category Jewelry
    And user adds Bracelet to the Shopping cart
  #Expected Result
    Then user adds product successfully
    Then user clicks on Category Books
    And user adds Pride and Prejudice to the Shopping cart
    And user adds second product successfully to Shopping cart

  Scenario: logged user could add different products to WishList
    When user chooses Category Electronics
    And user chooses subCategory Cellphones
    And user adds a Nokia Lumia to the WishList
  #Expected Result
    Then user adds product successfully to WishList
    And user chooses Category Computers
    And user chooses subCategory Notebooks
    And user adds HP Notebook to WishList
    And user adds second product successfully to WishList

  Scenario: logged user could add different products to compareList
    When user chooses Category Electronics
    And user chooses subCategory Cellphones
    And user adds a HTC One to the compareList
  #Expected Result
    Then user adds product successfully to compareList
    And user adds Nokia Lumia to compareList
    And user adds second product successfully to compareList