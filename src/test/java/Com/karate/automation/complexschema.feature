

Feature: To validate Json schema

  Scenario: To get the data in Json format and validate from file
    Given url 'http://localhost:9191'
    Given path '/normal/webapi/all'
    * def requestbody = read('response.json')
    And request requestbody
    And headers { Accept : 'application/json', Content-Type : 'application/json'}
    When method get
    Then status 200
    And print response
    * def projectschema = { "projectName" : '#string',"technology" :'# []#string'}
    * def mainschema = {   "jobId" :'#number',"jobTitle": '#string', "jobDescription":'#string', "experience": '#[] #string' ,"project": '#[]'}
    And match response ==
    
    """
    '#[] ##(mainschema)'
    
    
    
    """
    
    
