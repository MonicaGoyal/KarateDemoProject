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

And match response[0].jobId == 1
And match response[0].jobTitle == "Software Engg"

And match response[0].jobDescription == "To develop andriod application"
And match response[0].experience[2] == "Mobile Iron"
And match response[0].project[0].projectName == "Movie App"
And match response[0].project[0].technology[2] == "Gradle"
And match response[0].experience == '#[3]'

And match response[0].project[0].technology == '#[3]'

And match response[0].experience[*] == ["Google", "Apple","Mobile Iron"]
And match response[0].project[0].technology[*] == [ "Kotlin","SQL Lite","Gradle"]
          
 
And match response[0].experience[*] contains == ["Mobile Iron"]
And match response[0].project[0].technology[*] conatins == ["SQL Lite"]