Feature: To validate Get End point
Background: Setup the Baseurl
* url 'http://localhost:9191/normal/webapi'
And print "This is background keyword"



Scenario: To get the data in XML format

Given path '/all'
And header Accept = 'application/xml'
When method Get
Then status 200
And print response
And match response/List/item/jobId == '1'
And match response/List/item/jobTitle == 'Software Engg'
And match response/List/item/experience/experience[1] == 'Google'
And match response/List/item/project/project/projectName == 'Movie App'

And match response/List/item/project/project/technology/technology[2] == 'SQL Lite'
And match response/List/item/jobTitle == '#string?_ length'== 13'

