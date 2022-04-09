Feature:updation of job entry

Background:


Scenario: updation of job entry by calling another feature file
 
   # Given call read("createjobentry.feature")
   
    * def getRandomvalue = function(){return Math.floor((100) * Math.random());}
    * def jobid = getRandomvalue()
   * def postRequest = call read("createjobentrywithvariables.feature"){ _url: 'http://localhost:9191', _path:'/normal/webapi/update', _jobid:'#(_jobid)'}
   
   And print "calling feature", postRequest.jobid
   And print "calling feature", postRequest.getRandomvalue()
   
    
      
      