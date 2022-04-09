Feature: To validate Json schema

Scenario: To get the data in Json format and validate from file

 Given url 'http://localhost:9191'
Given path '/normal/webapi/add'
* def requestbody = read('response.json')
And request requestbody
And headers { Accept : 'application/json', Content-Type : 'application/json'}
When method post
Then status 201
And print response

And match response == 

"""
{

"jobId": '#number',
  "jobTitle": '#string',
  "jobDescription": '#string',
  "experience": '#[] #string',
     "project": '#[] #object'
}
 

"""

