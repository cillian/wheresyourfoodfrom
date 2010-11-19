Feature: Add entry

Scenario: User adds entry
  Given I am on the homepage
  And I select "Ireland" from "Consumer"
  And I fill in "Food" with "Oranges"
  And I fill in "Brand" with "fyfes"
  And I select "Jamaica" from "Producer"
  When I press "Add entry"
  Then I should see "Ireland has Oranges from Jamaica"

