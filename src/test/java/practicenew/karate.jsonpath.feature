Feature:To learn karate.jsonpath
Scenario:learn karate.jsonpath
Given url 'http://localhost:9191'
Given path '/normal/webapi/all'
And method Get
Then status 200
And print response
* def jobtitle = karate.jsonpath(respone, "$[?(@.jobId ==1)].jobTitle")
* def jobdescrip = karate.jsonpath(response,"$[?(@.jobId ==1)].jobDescription")
* def experience = karate.jsonpath(response,"$[?(@.jobId ==1)].experience")
karate.log(jobtitle)
karate.log(jobdescrip)
karate.log(experience)