Feature: Account

  Background: Login
    Given a valid account named "handle"
    And login system

  Scenario: Should visit register page
    Given on "root_path" page
    And click on "Account Management"
    Then Should on "admin_account_path" page

  @javascript
  Scenario: Should register a new account
    Given on "admin_account_path" page
    And Should see employee gallery
    And Fill in account info
    And click on "Create User"
    And Sleep 5 seconds
    Then Page should contain new user named "newfish"

  @javascript
  Scenario: Go to user profile
    Given on "admin_account_path" page
    And click on "test_user"
    Then Should on "user_profile_show_path" page
