Feature: Datadriven test for creation of table

Background:



  Scenario Outline: Datadriven for the job description entry - <jobId>
    Given url 'http://localhost:9191'
    And path '/normal/webapi/add'
    And request {  "jobId": '#(jobId)', "jobTitle":'#(jobTitle)', "project": [{ "technology" : [ "Kotlin", "SQL Lite", "Gradle" ],"projectName" : "Movie App" } ],"jobDescription" : '#(jobDescription)', "experience" : [ "Google", "Apple", "Mobile Iron" ]}
    And headers {Accept:'Application/json', Content-Type:'Application/json'}
    When method Post
    And status <status>
    Examples: 
    
      | jobId | jobTitle        | jobDescription                 | status |
      |   123 | Software Engg-2 | To develop andriod application |    201 |
      |   456 | Software Engg-2 | To develop andriod application |    201 |
      
      
       Scenario Outline: Datadriven for the job description entry with the help of csv - <jobId>
    Given url 'http://localhost:9191'
    And path '/normal/webapi/add'
    And request {  "jobId": '#(jobId)', "jobTitle":'#(jobTitle)', "project": [{ "technology" : [ "Kotlin", "SQL Lite", "Gradle" ],"projectName" : "Movie App" } ],"jobDescription" : '#(jobDescription)', "experience" : [ "Google", "Apple", "Mobile Iron" ]}
    And headers {Accept:'Application/json', Content-Type:'Application/json'}
    When method Post
    And status <status>
    Examples: 
    
    |read("testdata1.csv")|
    
  