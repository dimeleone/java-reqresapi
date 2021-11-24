Feature: Run functionals tests on /login endpoint

  Background:
    * url 'https://reqres.in/api'

  Scenario: successful login
    * def credential =
      """
      {
        "email": "eve.holt@reqres.in",
        "password": "cityslicka"
      }
      """

    Given path '/login'
    And request credential
    When method post
    Then status 200

    * def token = response.token
    * print 'token is: ', token

  Scenario: unsuccessful login
    * def credential =
      """
      {
        "email": "eve.holt@reqres.in",
      }
      """

    Given path '/login'
    And request credential
    When method post
    Then status 400

    * def error = response.error
    * print 'error is: ', error
