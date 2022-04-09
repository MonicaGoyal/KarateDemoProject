Feature: To validate Get End point
Background: Setup the Baseurl
* url 'http://localhost:9191'
 * def expectedOutput = read("response.json")
 


And print "This is background keyword"



Scenario: To get the data in Json format and validate from file

Given path '/normal/webapi/all'
And header Accept = 'application/json'
When method get
Then status 200
And print response
And match response == expectedOutput
And print response


