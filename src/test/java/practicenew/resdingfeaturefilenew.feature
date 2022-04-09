Feature: Verifying response of a get call

Scenario:Verifying response of a get call

Given url 'http://localhost:9191'
Given path '/normal/webapi/all'

When method GET
Then status 200
And print response
* def actualresponse = read("responsenewfeature.json")
And match response == actualresponse
