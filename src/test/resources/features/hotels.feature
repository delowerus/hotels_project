@web @hotels
Feature: hotels feature

  Background:
    Given I am on hotels.com home page

  #1
  @hotels-1
  Scenario Outline: Verify user can only view the result by selected property class
    Given I am on default locations search result screen
    When I select property class <stars>
    Then I verify system displays only <stars> hotels on search result
    Examples:
      | stars   |
      | 5 stars |
      | 4 stars |
      | 3 stars |
  #2
  @hotels-2
  Scenario: List of all of hotel within 10 miles radius of airport or downtown
    Given I am on default locations search result screen
    Then I verify system displays all hotels within 10 miles radius of airport
    And I verify Hilton Hotel is within radius

  #3
  @hotels-3
  Scenario: Verify todays deal price value
    And I enter destination New York, New York, United States of America on home page
    And I click on search button
    Then I verify todays deal is less than 200 on search result page

  #4
  @hotels-4
  Scenario Outline: Verify room count dropdown
    Then I select <select_rooms> from room dropdown
    And I verify <number_of_room_dropdown> is displayed
    Examples:
      | select_rooms | number_of_room_dropdown |
      | 1            | 1                       |
      | 2            | 2                       |
      | 3            | 3                       |
      | 4            | 4                       |
      | 5            | 5                       |
      | 6            | 6                       |
      | 7            | 7                       |
      | 8            | 8                       |
      | 9+           | 0                       |