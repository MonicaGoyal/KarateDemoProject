Feature: To test the get end point with query parameter
  * Background:
  Given url 'http://localhost:9191'

  Scenario: To create the job requesdt using helper featue file
    * def randompostid = function(){return Math.floor((100)*Math.random());}
    * def createjobid = randompostid()
    * def postRequest = call read("createjobentryhelper.feature"){_url:'http://localhost:9191',_path:'/normal/webapi/add',id:'#(id)'}
    And print "the value of id is",createjobid
      Given url 'http://localhost:9191'
    Given path '/normal/webapi/find'
    # And param id = createjobid
    # And param jobTitle = 'Software Engg'
    And params { id: '#(createjobid)',jobTitle:'Software Engg'}
    And headers {Accept:'application/Json'}
    When method Get
    And status 200
    And match response.jobId == createjobid
