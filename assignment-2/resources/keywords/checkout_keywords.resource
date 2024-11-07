*** Settings ***
Library           SeleniumLibrary
Resource          ../locators/checkout_locators.resource
Resource         ../variables/checkout_variables.resource

*** Keywords ***
I add an item to the shopping cart
    [Documentation]    Add the first item to the cart.
    Element Should Contain        ${PRODUCTS_PAGE_TITLE}       Products
    Click Button    ${ADD_TO_CART_BUTTON}
    Click Element    ${CART_ICON}
    Wait Until Element Is Visible    ${CART_PAGE_TITLE}

I proceed to checkout
    [Documentation]    Proceed to the checkout page.
    Element Should Contain        ${CART_PAGE_TITLE}       Your Cart
    Click Button    ${CHECKOUT_BUTTON}
    Wait Until Element Is Visible    ${CHECKOUT_INFO_PAGE_TITLE}

I fill in checkout information
    [Documentation]    Enter checkout details.
    Element Should Contain        ${CHECKOUT_INFO_PAGE_TITLE}       Checkout: Your Information
    Input Text    ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text    ${LAST_NAME_FIELD}    ${LAST_NAME}
    Input Text    ${POSTAL_CODE_FIELD}    ${POSTAL_CODE}
    Click Button    ${CONTINUE_BUTTON}
    Wait Until Element Is Visible    ${OVERVIEW_PAGE_TITLE}

I finish the checkout process
    [Documentation]    Complete the checkout.
    Element Should Contain        ${OVERVIEW_PAGE_TITLE}        Checkout: Overview
    Click Button    ${FINISH_BUTTON}
    Wait Until Element Is Visible    ${CONFIRMATION_MESSAGE}

I should see the confirmation message
    [Documentation]    Verify the confirmation message is displayed.
    Element Should Contain        ${CONFIRMATION_MESSAGE}       Thank you for your order!
