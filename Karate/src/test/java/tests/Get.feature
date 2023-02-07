Feature: Practice Get API

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  Scenario: Get API sample
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    * print responseStatus
    * print responseTime
    * print responseHeaders
    * print responseCookies

  Scenario: Get API backgroud path
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response

  
  Scenario: Separate the parameters
    Given path '/users'
    And param page = 1
    When method GET
    Then status 200
    And print response

  
  Scenario: Assertions
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[0] != null
    And match response.data[1].first_name == 'Lindsay'
    And assert response.data.length == 6
