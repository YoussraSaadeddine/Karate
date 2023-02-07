Feature: delete API

  Scenario: Delete
    Given url 'https://reqres.in/api/users/2'
    When method delete
    Then status 204
    And print response
