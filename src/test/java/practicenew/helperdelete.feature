Feature:Creation of job entry
Scenario: Creation of job entry using other file
Given url _url
Given path _path
And request {"jobId":'#(_id)',"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
When method Post
And status 201
