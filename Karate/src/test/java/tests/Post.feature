Feature: Post request

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response.json")
    
    
  Scenario: Post API 
    Given url 'https://reqres.in/api/users'
    And request {"name": "youssra","job": "life"}
    When method post
    Then status 201
    And print response
    
  
  Scenario: Backgroud test
    Given path '/users'
    And request {"name": "saad","job": "teacher"}
    When method post
    Then status 201
    And print response
    
    
  Scenario: Assertion result
    Given path '/users'
    And request {"name": "soad","job": "test"}
    When method post
    Then status 201
    And match response == {"name": "soad","job": "test","id":"#string","createdAt":"#ignore"}
    And print response
    

  Scenario: Test request from another file
    Given path '/users'
    And def requestBody = read("requestbody.json")
    And request requestBody
    When method post
    Then status 201
    And match response == expectedOutput
    And print response
    
   
  Scenario: Verify data
    Given path '/users'
    And request {"name": "sooad","job": "test"}
    When method post
    Then status 201
    And match response == expectedOutput
    
  
  Scenario: Set data
    Given path '/users'
    And def requestBody = read("requestbody.json")
    And set requestBody.name = "youssra"
    And request requestBody
    When method post
    Then status 201
    And print response
    
    
