Feature: user registration
  As a Harris Recipes enthusiast
  I want to be able to register an account
  So I can be part of the Harris Recipes community

  Background:
    Given that I am on the registration page

  #Scenario: register an account
  #  When I properly enter in my details
  #  Then I am a registered user

  Scenario: attempt to register an account with no info
    When I attempt to register an account with blank details
    Then I am disallowed registration

  Scenario: attempt to register an account with email but no password
    When I attempt to register an account and do not enter a password
    Then I am disallowed registration

  Scenario: attempt to register account with password but no email
    When I attempt to register an account with and do not provide email
    Then I am disallowed registration