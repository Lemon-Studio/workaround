Feature: Validate LemonStudio Tests page.
Background:
  Given I am on "https://lemonstudio.io/trainning"

@w1
  Scenario: fields in current page
  
  And I fill in "YourFirstName" with "Ana"
  And I fill in "YourMidName" with "Testando"
  And I fill in "YourLastName" with "Test"
  And I fill in "YourAge" with "18"
  And I fill in "YourEmail" with "teste@teste.com"
  And I fill in "YourJob" with "QA"
  And I fill in "YourGender" with "Female"
  Then I click on "reset_fields" button