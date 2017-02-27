Feature: edit profile
  As a current Harris Recipes user
  I want to be able to edit my profile
  So that I have the most recent information on it

  Background:
    Given I am already logged in
    # then I don't need to log out again and can keep going!

  Scenario: Change chef name
    When I go to edit my chef name
    Then the update should be succcessful

    #need to connect these for full feature

  Scenario: Change chef email
    When I go to edit my chef email
    Then the update should be succcessful

