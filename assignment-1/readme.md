# API Automation with Robot Framework

This project automates API tests for the **GET Single User** and **POST Create User** endpoints using **Robot Framework**. The tests are written in Gherkin-style syntax to ensure clarity and structure.

## Table of Contents
- [Introduction](#introduction)
- [Project Structure](#project-structure)
- [Setup](#setup)
- [Running Tests](#running-tests)
- [Test Cases](#test-cases)
- [Keywords](#keywords)

## Introduction
This project is intended to automate the testing of the **Reqres API**. The following endpoints are tested:
- **GET** `/users/{user_id}`: Retrieves a single user.
- **POST** `/users`: Creates a new user.

The tests are written using **Robot Framework** with Python and **Gherkin-style** syntax.

## Project Structure
```
assessment-1/ 
├── tests/ 
│ ├── get_single_user_test.robot # Test for GET Single User endpoint 
│ └── post_create_user_test.robot # Test for POST Create User endpoint 
├── resources/ 
│ ├── keywords/ 
│ │ └── user_keywords.resource # Custom keywords for user-related actions 
│ └── variables/ 
│   └── user_variables.resource # Variables for user details and base URLs 
├── results/ # Directory for test result logs and reports 
├── README.md # Documentation for setup and test execution 
└── robot.yaml # Configuration file for Robot Framework (optional)
```

## Setup

To get started with the project, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/hanif-afianto/assignment-lion-parcel.git
   cd assignment-1
   ```
2. **Install dependencies from requirements.txt**: Make sure Python is installed on your machine, then install the required dependencies:
    ```bash
    pip install -r requirements.txt

    ```
    The requirements.txt file includes:
    - `robotframework`
    - `robotframework-requests`
    - `robotframework-jsonlibrary`
3. **Configure the environment (Optional)**: You can set environment variables for the base URL or other configurations if needed.

## Running Tests

Once the environment is set up, you can run the tests using the following command:
```bash
robot tests/
```
This will execute all the tests located in the `tests/` directory.

### Running Specific Tests

To run a specific test file, use the following command:
```bash
robot tests/get_single_user_test.robot
```
or
```bash
robot tests/post_create_user_test.robot
```

## Test Cases

1. `get_single_user_test.robot`
    This test case retrieves a single user from the `GET` `/users/{user_id}` endpoint.
2. `post_create_user_test.robot`
    This test case creates a new user using the `POST` `/users endpoint`, and verifies that the response contains the correct `name` and `job`.

## Keywords
The following keywords are used in the project:

- Get Single User: Makes a `GET` request to retrieve a single user by `user_id`.
- Create New User: Makes a `POST` request to create a new user with a provided `name` and `job`.
- Verify User Name: Verifies that the `name` in the response matches the expected value.
- Verify User Job: Verifies that the `job` in the response matches the expected value.

These keywords are defined in the `resources/keywords/user_keywords.resource` file.