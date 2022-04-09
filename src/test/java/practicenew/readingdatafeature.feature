Feature: Match and print the response
Scenario:Match and print the response
Given url 'http://localhost:9191'
Given path '/normal/webapi/all'
When method Get
Then status 200

* def actualresponse = read("responsefeature.json")
And print actualresponse
And match response == actualresponse
