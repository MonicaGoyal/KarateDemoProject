
@Regression @Smoke
Feature: Create job entry



  Scenario: create job entry
  Given url _url
    Given path _path 
    And print "Helper==>",_url 
     And print "Helper==>", _path 
   
   
    And request {  "jobId" : '#(_jobid)' , "jobTitle" : "Software Engg-2", "project" : [ { "technology" : [ "Kotlin", "SQL Lite", "Gradle" ],    "projectName" : "Movie App"  } ], "jobDescription" : "To develop andriod application",  "experience" : [ "Google", "Apple", "Mobile Iron" ]}
    And headers {Accept: 'application/json', Content-type: 'application/json'}
    When method Post
    And status 201

    
     Scenario: create job entry with embeded expression
    Given path '/normal/webapi/add'
    * def getRandomvalue = function(){return Math.floor((100) * Math.random());}
    * def jobid = getRandomvalue()
    And request {  "jobId" : '#(jobid)' , "jobTitle" : "Software Engg-2", "project" : [ { "technology" : [ "Kotlin", "SQL Lite", "Gradle" ],    "projectName" : "Movie App"  } ], "jobDescription" : "To develop andriod application",  "experience" : [ "Google", "Apple", "Mobile Iron" ]}
    And headers {Accept: 'application/json', Content-type: 'application/json'}
    When method Post
    And status 201
    