
@ignore
Feature: To validate Get End point
Background: Setup the Baseurl
* url 'http://localhost:9191/normal/webapi'
And print "This is background keyword"



Scenario: To get the data in Json format

Given path '/all'
And header Accept = 'application/json'
When method Get
Then status 200
And print response
And match response.[0].jobId == '#present'
And match response.[0].project[0].projectName == '#string'
And match response.[0].experience[1] == '#string'
And match response.[0].project[0].technology[0] == '#ignore'
And match response.[0].experience == '#array'
And match response.[0].jobId == '#?_== 1'
And match response.[0].jobTitle == '#string?_.length == 13'
And match response.[0].experience == '#[3]#string?_.length >= 2'