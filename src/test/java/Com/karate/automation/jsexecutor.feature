Feature:To executue JS Function
Scenario: executue JS Function
* def getintvalue = function() {return 10;}
Then print "getintvalue is " ,getintvalue()
* def getrandomvalue = function() {return Math.floor((100) * Math.random());}
* def Stringvalue = function (arg1){return "hello"  + arg1;}
Then print "Stringvalue ==>" ,Stringvalue("world")