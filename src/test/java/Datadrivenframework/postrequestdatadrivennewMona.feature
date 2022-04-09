Feature: To create job entry

  Scenario Outline: To create job entry using Post req
    Given url 'http://localhost:9191'
    Given path '/normal/webapi/add'
    And request {"jobId":'#(Jobid)',"jobTitle":'#(Jobtitle)',"jobDescription":'#(Jobdescription)',"experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    When method Post
    Then status <status>
    And print response

    Examples: 
      | Jobid | Jobtitle      | Jobdescription  | status |
      |   100 | Automationend | Automation      |    201 |
      |   200 | BA            | BusinessAnalsis |    201 |
      |   300 | Developer     | Development     |    201 |
      | id    | S&M           | Sales           |    400 |
      | false | S&M           | Sales           |    400 |
