Feature: Add a recipe to the site
  As a Harris Recipes user
  I want to be able to add a recipe to the site
  So I can share recipes with others

  Background:
    Given I am on the Recipes page
    And I log in from the Recipes page

  Scenario: Add one recipe to the site
    When I submit a recipe to the site
    Then my recipe should have been submitted

  Scenario: Try to add recipe with no details
    When I submit a recipe to the site with no details
    Then I should not be able to submit the recipe

