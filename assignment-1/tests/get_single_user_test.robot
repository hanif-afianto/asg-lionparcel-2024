*** Settings ***
Library    RequestsLibrary
Resource   ../resources/keywords/user_keywords.resource
Resource   ../resources/variables/user_variables.resource

*** Test Cases ***
Get Single User
    [Tags]    API
    Given I have a user ID
    When I retrieve the single user details
    Then the status code should be 200
    And the user details should be correct

*** Keywords ***
Given I have a user ID
    Log    User ID is ${USER_ID}

When I retrieve the single user details
    ${retrieved_user}=    Get Single User    ${USER_ID}
    Set Suite Variable    ${RETRIEVED_USER}    ${retrieved_user}

Then the status code should be 200
    Status Should Be    200

And the user details should be correct
    Should Contain    ${RETRIEVED_USER}    data
