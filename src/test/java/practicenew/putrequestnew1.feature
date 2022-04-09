Feature: To create new entry

  Background: 
    Given url 'http://localhost:9191'

  Scenario: To create new job entry
    Given path 'normal/webapi/add'
    * def getRandomVal = function() {return Math.floor((100) * Math.random());}
    * def id = getRandomVal()
    And request {  "jobId": '#(id)', "jobTitle":"Software Engg" , "jobDescription" : "To develop andriod application", "experience" : [ "Google", "Apple", "Mobile Iron" ], "project" : [ {"projectName" : "Movie App", "technology" : [ "Kotlin", "SQL Lite", "Gradle" ]}]}
    When method Post
    And status 201
    And print response
    
    Given path 'normal/webapi/update'
    And request 
    And request
      """
      
      {
        "jobId": '#(id)',
        "jobTitle" : "Software Engg-new",
        "jobDescription" : "To develop andriod application",
        "experience" : [ "Google", "Apple", "Mobile Iron" ],
        
        "project" : [ {
          "projectName" : "Movie App",
          "technology" : [ "Kotlin", "SQL Lite", "Gradle","Maven"]},
          
          {
          "projectName" : "Movie App",
          "technology" : [ "Kotlin", "SQL Lite", "Gradle","Maven"]}
          
               
                   
          
          
          ]
          
          }
       
      

      """
    When method Put
    And status 200
    And print response