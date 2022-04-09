Feature: creating job id
Scenario: creating job id through Post req
Given url _url
Given path _path
And request { "jobId":'#(createid)',"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
When method Post
And status 201
* def responsejobid = response.jobId
* def responsejobtitle = response.jobTitle
