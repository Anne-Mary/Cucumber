Feature: User login
  as I user I want to be able to sign up
  and login to the bbc site

  Scenario Outline: If I input incorrect password details I will receive the correct error message
    Given I access the BBC home page
    And I access the sign in page
    When I select register
    And I input my date of birth
    And I input necessary register details with the password details <password>
    Then I receive the correct error <error>
    Examples:
    | password | error                                                 |
    | a@34567  |  Sorry, that password is too short. It needs to be eight characters or more.   |
    | abcd1234 |    Sorry, that password isn't valid. Make sure it's hard to guess.             |
    | abcdefgh | Sorry, that password isn't valid. Please include something that isn't a letter.|
    | 12345678 | Sorry, that password isn't valid. Please include a letter |