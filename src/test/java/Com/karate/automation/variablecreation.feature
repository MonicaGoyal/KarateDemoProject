Feature: Variables creation in Karate
Background: Create and initialize variables
* def appname = "Google"
* def pageloadtimeout = 20


Scenario: creating a variable
Given def var_int = 10
Given def var_string = "Monica"
Then print "int_variable ==>",var_int
And print "String_variable ==>",var_string
And print "name of app ==>",appname

And print "the timeto load page ==>",pageloadtimeout