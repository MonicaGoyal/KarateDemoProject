Feature: Delete job entry

  Background: 
    Given url 'http://localhost:9191'

  Scenario: Delete job entry after creating it  through Post
    * def randomid = function(){return Math.floor((100)* Math.random());}
    * def createid = randomid()
    * def postRequest = call read("createjobentrydelete.feature"){_url :'http://localhost:9191',_path :'/normal/webapi/add', _id :'#(createid)'}
    Given path '/normal/webapi/remove/' + createid
    When method Delete
    And status 200
    Given path '/normal/webapi/find'
    And params { id:'#(createid)',jobTitle:'Software Engg'}
    When method Get
    And status 404
    And print response
    And match response.message contains "Failed to find job with id"

  Scenario: To delete the same job entry twice
    * def randomid = function(){return Math.floor((100)* Math.random());}
    * def createid = randomid()
    * def postRequest = call read("createjobentrydelete.feature"){_url :'http://localhost:9191',_path :'/normal/webapi/add', _id :'#(createid)'}
    Given path '/normal/webapi/remove/' + createid
    When method Delete
    And status 200
    Given path '/normal/webapi/remove/' + createid
    When method Delete
    And status 404

  Scenario: To demo request chaining
    # creation of post request and extraction of job id and job title
    * def randomid = function(){return Math.floor((100)* Math.random());}
    * def createid = randomid()
    * def postRequest = call read("createjobentrydelete.feature"){_url :'http://localhost:9191',_path :'/normal/webapi/add', _id :'#(createid)'}
    * def jobId = postRequest.responsejobid
    * def jobTitle = postRequest.responsejobtitle
   
    And print "The value of jobid is ",jobId
    And print "The value of jobtitle is",jobTitle
    # patch request
     * def jobdes = 'automation of websites'
    Given path 'normal/webapi/update/details'
    And params {id:'#(jobId)',jobTitle:'#(jobtitle)',jobDescription:'#(jobdes)'}
    And header Accept = 'application/json'
    And request {}
    When method patch
    And status 200
    * def jobId = response.jobId
    * def jobtitle = response.jobtitle
    # get request
    Given path '/normal/webapi/all'
    And params {id:'#(jobId)',jobTitle:'#(jobtitle)'}
    And header Accept = 'application/json'
    When method Get
    Then status 200
    And match response.jobDescription == jobdes
