Feature: Schema validation

  Scenario: To validate schema
    Given url 'http://localhost:9191'
         Given path '/normal/webapi/add'
    * def requestBody = read("responsefeature.json")
    And request requestBody
    And headers { Accept : 'application/json', Content-Type : 'application/json'}
    When method Post
    And status 201
    And print response
    And match response ==
      """
      
      {

"jobId": '#number',
  "jobTitle": '#string',
  "jobDescription": '#string',
  "experience": '#[] #string',
     "project": '#[] #object'
}
                  
          
      
      
      
      
      
      

      """
