Feature: Run functionals tests on /users endpoint

  Background:
    * url 'https://reqres.in/api'

  Scenario: get all users and then get the first user by id
    Given path '/users'
    When method get
    Then status 200

    * def first = response.data[0]

    Given path '/users/' + first.id
    When method get
    Then status 200

  Scenario: create a user and print his id
    * def user =
      """
      {
        "name": "Dimitri",
        "job": "developer"
      }
      """

    Given path '/users'
    And request user
    When method post
    Then status 201

    * def id = response.id
    * print 'created id is: ', id

  Scenario: remove a user by id
    Given path '/users/2'
    When method delete
    Then status 204

