Feature:using jsonpath
Background:
Given url 'http://localhost:9191'
Scenario:using jsonpath

Given path '/normal/webapi/all'

When method Get
Then status 200
* def jobTitle = karate.jsonPath (response, "$[?(@.jobId == 1)].jobTitle")
* def jobdes = karate.jsonPath (response,"$[?(@.jobId == 1)].jobDescription")
* def experience = karate.jsonPath (response,"$[?(@.jobId == 1)].experience")
And print "jobTitle is",jobTitle
And print "jobdes is",jobdes
And print "experience is ",experience