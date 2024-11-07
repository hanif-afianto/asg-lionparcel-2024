# API Automation with Robot Framework

This project automates he shopping cart checkout process on [Sauce Demo](https://www.saucedemo.com/) using **Robot Framework** in **Gherkin style**.

## Table of Contents
- [Project Structure](#project-structure)
- [Setup](#setup)
- [Running Tests](#running-tests)
- [Test Case Flow](#test-case-flow)

## Project Structure
```
assessment-2/
├── tests/
│   ├── shopping_cart_checkout_test.robot
├── resources/
│   ├── keywords/
│   │   ├── checkout_keywords.resource
│   │   └── login_keywords.resource
│   ├── locators/
│   │   ├── checkout_locators.resource
│   │   └── login_keywords.resource
│   └── variables
│       ├── checkout_variables.resource
│       └── login_variables.resource
├── results/
├── README.md
└── requirement.txt
```

## Setup

To get started with the project, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/hanif-afianto/assignment-lion-parcel.git
   cd assignment-2
   ```
2. **Install dependencies from requirements.txt**: Make sure Python is installed on your machine, then install the required dependencies:
    ```bash
    pip install -r requirements.txt

    ```
    The requirements.txt file includes:
    - `robotframework`
    - `robotframework-seleniumlibrary`
3. **Download Browser Drivers**:
    - Install the appropriate WebDriver for your browser (e.g., `ChromeDriver` for Chrome).
    - Ensure the driver is in your PATH or specify the path in `checkout_variables.robot` or `login._variables.robot`.
4. **Configure the environment (Optional)**: You can set environment variables for the base URL or other configurations if needed.

## Running Tests

1. **Execute Tests**: Once the environment is set up, you can run the tests using the following command:
```bash
robot -d results tests/shopping_cart_checkout_test.robot
```
This will execute all the tests located in the `tests/` directory.

2. **View Results**:
    - Test reports will be generated in the `results/` directory.
    - Open `log.html` and `report.html` to view detailed test logs and results.

## Test Case Flow

The main test case automates the following steps:

1. Opens the Sauce Demo website.
2. Logs in with valid credentials.
3. Adds an item to the shopping cart.
4. Proceeds to checkout.
5. Fills out checkout details and completes the process.
6. Verifies the checkout confirmation message.