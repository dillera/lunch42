Feature: Creating venues
 In order to have venues to rate
 As a user
 I want to create them easily
 Scenario: Creating a venue
  Given I am on the homepage
  When I follow "New Venue"
  And I fill in "Name" with "Ralphs"
  And I press "Create Venue"
  Then I should see "Venue has been created."