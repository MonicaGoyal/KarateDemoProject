Feature: update job entry

  Background: 
    Given url 'http://localhost:9191'

  Scenario: updation of job entry
    Given path '/normal/webapi/add'
    * def getRandomvalue = function(){return Math.floor((100) * Math.random());}
    * def jobid = getRandomvalue()
    And request {  "jobId" : '#(jobid)', "jobTitle" : "Software Engg", "project" : [ { "technology" : [ "Kotlin", "SQL Lite", "Gradle" ],    "projectName" : "Movie App"  } ], "jobDescription" : "To develop andriod application",  "experience" : [ "Google", "Apple", "Mobile Iron" ]}
    And headers {Accept: 'application/json', Content-type: 'application/json'}
    When method Post
    And status 201

  Scenario: updation of job entry by put method
    Given path '/normal/webapi/update'
    And request
    
   """
      
    {
  "jobId" : 1,
  "jobTitle" : "Software Engg",
  "project" : [ {
    "technology" : [ "Kotlin", "SQL Lite", "Gradle" ],
    "projectName" : "Movie App"
  } ],
  
   "project" : [ {
    "technology" : [ "Kotlin", "SQL Lite", "Gradle" ],
    "projectName" : "Movie App"
  } ],
  "jobDescription" : "To develop andriod application",
  "experience" : [ "Google", "Apple", "Mobile Iron" ]
}
    
    
    
   """
      
      And headers {Accept: 'application/json', Content-type: 'application/json'}
      When method Put
      And status 200
      
      * def projectArray = karate.jsonPath(response,"$[?(@.jobId == 'jobid ')].project")
      
            
      And print projectArray
      And match projectArray [0] == '#[0]'
      
     
      

  
