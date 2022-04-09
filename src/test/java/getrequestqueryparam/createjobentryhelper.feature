Feature: Create new job entry
Scenario: Create new job entry
Given url _url
Given path _path
And request {"jobId": '#(createjobid)',"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
When method Post
And status 201

