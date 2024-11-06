*** Settings ***
Library    RequestsLibrary
Library    CSVLibrary
Resource   ../resources/variables/user_variables.resource

*** Keywords ***
Get Single User
    [Arguments]    ${user_id}
    ${response}=    GET    ${BASE_URL}/users/${user_id}
    Status Should Be    200
    ${response_body}=    Set Variable    ${response.json()}  # Capture the JSON response body
    RETURN    ${response_body}

Create New User
    [Arguments]    ${name}    ${job}
    ${payload}=    Create Dictionary    name=${name}    job=${job}
    ${response}=    POST    ${BASE_URL}/users    data=${payload}
    Status Should Be    201
    ${response_body}=    Set Variable    ${response.json()}  # Capture the JSON response body
    RETURN    ${response_body}

Verify User Name
    [Arguments]    ${response}    ${expected_name}
    Should Be Equal As Strings    ${response["name"]}    ${expected_name}

Verify User Job
    [Arguments]    ${response}    ${expected_job}
    Should Be Equal As Strings    ${response["job"]}    ${expected_job}
