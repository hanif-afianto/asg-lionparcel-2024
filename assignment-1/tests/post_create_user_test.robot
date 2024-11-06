*** Settings ***
Library    RequestsLibrary
Library    CSVLibrary
Resource   ../resources/keywords/user_keywords.resource
Resource   ../resources/variables/user_variables.resource

*** Test Cases ***
Create New User
    [Tags]    API
    Given I have user details
    When I create a new user
    Then the status code should be 201
    And the user name and job should be correct

*** Keywords ***
Given I have user details
    Log    Creating a new user with name ${USER_NAME} and job ${USER_JOB}

When I create a new user
    ${new_user}=    Create New User    ${USER_NAME}    ${USER_JOB}
    Set Suite Variable    ${NEW_USER}    ${new_user}

Then the status code should be 201
    Status Should Be    201

And the user name and job should be correct
    Verify User Name    ${NEW_USER}    ${USER_NAME}
    Verify User Job     ${NEW_USER}    ${USER_JOB}
