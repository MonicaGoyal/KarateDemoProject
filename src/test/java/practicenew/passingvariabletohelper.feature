Feature: To create new entry

  Background: 
    Given url 'http://localhost:9191'

  Scenario: To create new job entry using helper file
    
    #Given call read("createjobentryhelper1.feature")
    * def randomJobID = function(){return Math.floor((100)*Math.random());}
    * def id = randomJobID()
    
    And print "value of random id is" ,id
    
    * def postRequest = call read("creatrjobentrywithvariables.feature"){ _url:'http://localhost:9191', _path:'/normal/webapi/add', _id:'#(id)'}
      Given path 'normal/webapi/update'
      
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
    And match response.jobTitle == "Software Engg-new"
    * def projectarray = karate.jsonPath(response,"$[?(@.jobId == "+id+")].project")
    And print projectarray
    And match projectarray == '#[1]'
   