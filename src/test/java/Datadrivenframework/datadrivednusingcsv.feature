Feature: To create job entry using Post req

  Background: 
    * def testdata = read("testdata1.csv")

  Scenario Outline: To create job entry using Post req
    Given url 'http://localhost:9191'
    Given path '/normal/webapi/add'
    And request {"jobId":'#(Jobid)',"jobTitle":'#(Jobtitle)',"jobDescription":'#(Jobdescription)',"experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    When method Post
    And status <status>
    And print response

    Examples: 
      |testdata|
