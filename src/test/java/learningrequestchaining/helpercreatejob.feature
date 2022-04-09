Feature:Create job entry
Scenario:Job entry using variables from mail file
Given url _url
Given path _path
And request {"jobId":'#(id)',"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}

When method Post
And status 201
* def responseid = response.jobId
* def responsetitle = response.jobTitle