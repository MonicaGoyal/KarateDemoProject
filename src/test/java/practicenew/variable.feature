Feature: variable cration in karate
Background:

* def var_int = 10
* def var_string = "Karate"
* def var_intnew = var_int+10

Scenario: creating a variable

And print "value of int is",var_int
And print "value of string is",var_string

And print "the value of var_intnew",var_intnew
Scenario: Access the variables
And print "previous scenario",var_int
And print "previous scenario",var_string

And print "previous scenario",var_intnew