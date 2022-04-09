Feature: Embeded expression

Background:

    Given url 'http://localhost:9191'

  Scenario:  Embeded expression for json formart
  
   
    Given path '/normal/webapi/add'
     * def getJobid = function(){return Math.floor((100) * Math.random());}
     * def jobid = getJobid()
     
     * def jobTitle =  "Marketing Manager"
     * def jobDescription = "Sales Management"
    
    And request {  "jobId":'#(jobid)' , "jobTitle":'#(jobTitle)', "project": [{ "technology" : [ "Kotlin", "SQL Lite", "Gradle" ],"projectName" : "Movie App" } ],"jobDescription" : '#(jobDescription)', "experience" : [ "Google", "Apple", "Mobile Iron" ]}
       And headers {Accept:'Application/json', Content-Type:'Application/json'}
    When method Post
    And print response
    
    And match response.jobTitle ==  "Marketing Manager"
    And status 201
  