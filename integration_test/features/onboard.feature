Feature: Onboard Page with Registration and Sign In Buttons
  Background:
    Then I expect the button "register" to be present within 3 seconds
    And I expect the button "signin" to be present within 1 seconds

  Scenario: User opens the app and sees the onboard page

  Scenario: User taps on the "Register" button and is taken to the registration page
    And I tap the "register" button
    Then I expect the element "register_page" to be present within 3 seconds
    And I expect the text "Register Page" to be present

  Scenario: User taps on the "Sign In" button and is taken to the signins page
    Then I expect the button "signin" to be present within 3 seconds
    And I tap the "signin" button
    Then I expect the element "signin_page" to be present within 3 seconds
    And I expect the text "Signin Page" to be present
