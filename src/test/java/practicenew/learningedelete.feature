Feature: Delete job entry

  Background: 
    Given url 'http://localhost:9191'

  Scenario: Delete job entry after creating it  through Post
    * def randomid = function(){return Math.floor((100)* Math.random());}
    * def createid = randomid()
    * def postRequest = call read("helperdelete.feature"){_url :'http://localhost:9191',_path :'/normal/webapi/add', _id :'#(createid)'}
    Given path '/normal/webapi/remove/' + createid
    When method delete
    And status 200
Given path '/normal/webapi/remove/' + createid
    When method delete
    And status 404
    