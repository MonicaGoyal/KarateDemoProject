Feature:To Match the response
Background:
Given url 'http://localhost:9191'
Scenario: Matching response using various methods
Given path '/normal/webapi/all'
When method Get
And status 200
And print response
And match response contains deep {project:[{"projectName": "Movie App"}] }
And match response contains deep {"jobDescription": "To develop andriod application"}
And match response contains deep {"jobTitle": "Software Engg"}
And match response contains deep {project :[{ "technology": [ "Kotlin", "SQL Lite","Gradle"]}]}
And match response[0].jobTitle == "Software Engg"
And match response[0].jobDescription == "To develop andriod application"
And match response[0].experience[1] == 'Apple'
And match response[0].project[0].projectName == "Movie App"
And match response[0].project[0].technology[2] == 'Gradle'
And match response[0].project == '#[1]'
And match response[0].project[0].technology == '#[3]'
And match response[0].project[0].technology[*] ==   ["Kotlin","SQL Lite","Gradle"]
And match response[0].project[0].technology[*] contains ["Kotlin"]
And match response[0].experience[*] contains ["Google","Apple"]
Scenario: To validate the Json array using fuzzy matcher

Scenario: Matching response using various methods
Given path '/normal/webapi/all'
When method Get
And status 200
And print response

And match response[0].jobTitle == '#present'
And match response[0].jobDescription == '#notnull'
And match response[0].experience[1] == '#ignore'

And match response[0].project[0].technology[*] == '#array'
And match response[0].jobId == '#?_==1'
And match response[0].project[0].technology == '#[3]#string?_.length >=2'
And match response[0].experience == '#[]#string'



