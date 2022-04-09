
@Regression
Feature: To update the end point
Background:
Given url 'http://localhost:9191'

Scenario:


Given path '/normal/webapi/add'
* def getRandomValue = function() {return Math.floor(100) * (Math.random());}
 
Then print "functionvalue =>",getRandomValue()
* def id = getRandomValue()
And request { "jobId": '#(id)', "jobTitle": "Software Engg -2", "project": [{ "technology" : [ "Kotlin", "SQL Lite", "Gradle" ],"projectName" : "Movie App" } ],"jobDescription" : "To develop andriod application", "experience" : [ "Google", "Apple", "Mobile Iron" ]}
When method post
And status 201
And print response


Given path '/normal/webapi/update'
And request
"""
{
   "jobId": '#(id)',
  "jobTitle" : "Software Engg-new",
  "project" : [ {
    "technology" : [ "Kotlin", "SQL Lite", "Gradle","Selenium" ],
    
    "projectName" : "Movie App"
  } ],
  "jobDescription" : "To develop andriod application",
  "experience" : [ "Google", "Apple", "Mobile Iron"]
}



"""


When method put
And status 200
And match response.message contains "Selenium"
