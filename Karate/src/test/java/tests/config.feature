Feature: Test karate-config file
#test git
  Background: 
    * url BaseURL
    * header Accept = 'application/json'

  Scenario: karate-config
    Given path '/users?page=2'
    Given print name
    When method GET
    Then status 200
    And print response
    * print responseStatus
    * print responseTime
    * print responseHeaders
    * print responseCookies
