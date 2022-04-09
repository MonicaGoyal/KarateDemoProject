Feature: To create job entries

  Scenario Outline: Creation of job entries using datadriven approach-<jobId>
    Given url 'http://localhost:9191'
    Given path '/normal/webapi/add'
    And request {  "jobId": '#(jobId)', "jobTitle":'#(jobTitle)', "project": [{ "technology" : [ "Kotlin", "SQL Lite", "Gradle" ],"projectName" : "Movie App" } ],"jobDescription" : '#(jobDescription)', "experience" : [ "Google", "Apple", "Mobile Iron" ]}
    When method Post
    And status <status>

    Examples: 
      | jobId | jobTitle          | jobDescription | status |
      |   123 | Marketing Manager | Marketing      |    201 |
      |   456 | Software-Engineer | Automation     |    201 |
      |   789 | Software-Engineer | Automation     |    201 |

      
      Scenario Outline: Creation of job entries using datadriven approach using csvfile-<jobId>
      
      Examples:
      |read('testdata1.csv')|