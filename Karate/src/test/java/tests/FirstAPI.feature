Feature: API test with Karate

  Scenario: Test get API
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
