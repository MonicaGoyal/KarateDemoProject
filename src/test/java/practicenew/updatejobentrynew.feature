Feature: To create new entry

  Background: 
    Given url 'http://localhost:9191'

  Scenario: To create new job entry using helper file
    #Given call read("createjobentryhelper1.feature")
    
    * def postRequest = call read("createjobentryhelper1.feature")
    
    And print "the value of id",postRequest.Id
    
    And print "the value of randomid" ,postRequest.randomJobId()   
    

   
    Given path 'normal/webapi/update'
    And request
      """
      {
      "jobId" :'#(postRequest.Id)',
      "jobTitle" : "Software Engg-new",
      "jobDescription" : "To develop andriod application",
      "experience" : [ "Google", "Apple", "Mobile Iron","Maven"],
      "project" : [ {
      "projectName" : "Movie App",
      "technology" : [ "Kotlin", "SQL Lite", "Gradle" ]}]
      
      }
      """
    When method Put
    And status 200
    And print response
    And match response.jobTitle == "Software Engg-new"
    * def projectarray = karate.jsonPath(response,"$[?(@.jobId == '+postRequest.Id+')].project")
    And print projectarray
    And match projectarray == '#[0]'