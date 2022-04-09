Feature:update job des
Background:
Given url 'http://localhost:9191'
Scenario:update job des

   * def randomJobId = function(){return Math.floor((100)*Math.random());}
   * def createid = randomJobId()
   * def Postrequest = call read("createentryhelperpatch.feature"){_url :'http://localhost:9191',_path :'/normal/webapi/add',_id :'#(createid)'}
   Given path 'normal/webapi/update/details'
   * def jobtitle = "Marketing Manager"
   * def jobDes = "Sales and Marketing"
   
   And params {id:'#(createid)',jobTitle :'#(jobtitle)',jobDescription:'#(jobDes)'}
   When method Patch
   And status 200
   And print response
   And match response.jobDescription == jobDes