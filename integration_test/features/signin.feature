Feature: Signin Screen with Email and Password Validation
    Background:
        Then I expect the button "signin" to be present within 3 seconds
        And I tap the "signin" button
        Then I expect the element "signin_page" to be present within 3 seconds
        And I expect the text "Signin Page" to be present

    Scenario: User enters valid email and password and signs in successfully
        When I fill the "email" field with "test@test.com"
        And I fill the "password" field with "123456"
        Then I tap the "signin" button
        And I expect the element "home_page" to be present within 3 seconds

    Scenario: User enters an invalid email format and sees an error message
        And I fill the "email" field with "invalid_email"
        Then I tap the "signin" button
        And I expect the field "email" to be present within 2 seconds
        And I expect the text "Please enter a valid email" to be present

    Scenario: User enters an invalid password format and sees an error message
        And I fill the "password" field with "123"
        Then I tap the "signin" button
        And I expect the field "password" to be present within 2 seconds
        And I expect the text "Password must be at least 6 characters" to be present

    Scenario: User leaves email field empty and sees an error message
        Then I tap the "signin" button
        And I expect the field "email" to be present within 2 seconds
        And I expect the text "Please enter some email" to be present

    Scenario: User leaves password field empty and sees an error message
        Then I tap the "signin" button
        And I expect the field "password" to be present within 2 seconds
        And I expect the text "Please enter some password" to be present