Feature: Run functionals tests on /register endpoint

  Background:
    * url 'https://reqres.in/api'

  Scenario: successful register
    * def credential =
      """
      {
        "email": "eve.holt@reqres.in",
        "password": "pistol"
      }
      """

    Given path '/register'
    And request credential
    When method post
    Then status 200

    * def id = response.id
    * def token = response.token
    * print 'user id is: ', id
    * print 'token is: ', token

  Scenario: unsuccessful register
    * def credential =
      """
      {
        "email": "eve.holt@reqres.in",
      }
      """

    Given path '/register'
    And request credential
    When method post
    Then status 400

    * def error = response.error
    * print 'error is: ', error
