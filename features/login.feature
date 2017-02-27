Feature: login to harris recipes
  As a Harris Recipes user
  I want to be able to login to my account
  So that I can access recipes.

  Background:
    Given I am not logged in
    And I am on the login page

  Scenario: login with valid credentials
    When I submit valid login information
    Then I am logged in

  Scenario: login with invalid credentials
    When I submit invalid login information
    Then I am denied access