Feature: Create job entry

  Scenario: create job entry
    Given url _url
    And path _path
    And print "The url is", _url
    And print "the path is",_path
    And print "the id is",_id
    And request {"jobId":'#(_id)',"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    And headers {Accept: 'application/json', Content-type: 'application/json'}
    When method Post
    And status 201
   
