Feature: Complex schema validation

  Scenario: To validate schema
    Given url 'http://localhost:9191'
    Given path '/normal/webapi/add'
    * def requestBody = read("responsefeature.json")
    And request requestBody
    When method Post
    And status 201
    And print response
    * def projectschema = { "projectName": '#string',"technology":'#[] #string'}
    * def mainschema = { "jobId": '#number',"jobTitle" : '#string',"jobDescription" : '#string',"experience":'#[] #string',"project":'#[] ##(projectschema)'}
    And match response ==
      """
      
      '##(mainschema)'
      
      
      
      

      """
