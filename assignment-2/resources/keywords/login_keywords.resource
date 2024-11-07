*** Settings ***
Library           SeleniumLibrary
Resource          ../locators/login_locators.resource
Resource          ../variables/login_variables.resource

*** Keywords ***
I open the Sauce Demo login page
    [Documentation]    Open the Sauce Demo login page.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${LOGIN_BUTTON}

I log in with valid credentials
    [Documentation]    Log in with the specified username and password.
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button  ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${PRODUCTS_PAGE_TITLE}