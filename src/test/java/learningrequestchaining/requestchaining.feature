Feature: Request Chaining
Background:
Given url 'http://localhost:9191'

Scenario:creation of job entry
* def randomjobid = function(){return Math.floor((100) * Math.random());}
* def createid = randomjobid()
* def postrequestResponse = call read("helpercreatejob.feature"){_url :'http://localhost:9191',_path :'/normal/webapi/add', id :'#(createid)'}
* def jobId = postrequestResponse.response.jobId
* def jobTitle = postrequestResponse.responsetitle
And print "the value of job id is",jobId
And print "the value ofjobTitle",jobTitle

* def jobDes = "automation of scrips"
Given path '/normal/webapi/update/details'
And params {id:'#(jobId)',jobTitle:'#(jobTitle)',jobDescription:'#(jobDes)'}

And request {}
When method Patch 
And status 200
#And match response.jobDescription == jobDes
* def jobId = response.jobId
* def jobTitle = response.jobTitle
Given path '/normal/webapi/find' 
And params {id:'#(jobId)',jobTitle:'#(jobTitle)'}
And headers Accept = 'application/json'
When method Get
And status 200
And match response.jobDescription == jobDes