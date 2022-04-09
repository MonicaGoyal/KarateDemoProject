Feature: to upload a file
Background: 
Given url 'http://localhost:9191'
Scenario: Uploading a text file
Given path 'normal/webapi/upload'
And multipart file file = {read :'fileupload.txt',filename:'fileupload.txt',Content-Type:'multipart/form-data' }
When method Post
Then status 200
And print response

Scenario: Uploading a json file
Given path 'normal/webapi/upload'
* def filelocation = '../response.json'
And multipart file file = {read :'#(filelocation)',filename:'response.json',Content-Type:'multipart/form-data' }
When method Post
Then status 200
And print response
And match response.message contains 'response.json'
