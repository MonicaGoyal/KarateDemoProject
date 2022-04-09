Feature: Create job entry



  Scenario: create job entry
  
  Given url 'http://localhost:9191'
   And path '/normal/webapi/add'
   
   * def randomJobId = function(){return Math.floor((100)*Math.random());}
   * def Id = randomJobId()
   
    And request {"jobId":'#(Id)',"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    And headers {Accept: 'application/json', Content-type: 'application/json'}
    When method Post
    And status 201
    And print "the value of id" ,Id
    

   