Feature: To create new job entry
Background: Setup the Baseurl
* url 'http://localhost:9191/normal/webapi'




Scenario: To create new job entry

Given path '/all'
And request { "jobId": 5,    "jobTitle": "Software Engg -2",  "jobDescription": "To develop andriod application",  "experience": ["Google", 
      "Apple",

  
  
     
  
    ],
    "project": [
      {
        "projectName": "Movie App",
        "technology": [
          "Kotlin",
          "SQL Lite",
          "Gradle"
} 
And header Accept = {'application/json', Content-type: 'application/json'}
When method Post
Then status 200
And print response