Feature: Data driven

  Scenario Outline: To create job description <method>
    Given print '<url>'
    When print  '<path>'
    Then print  '<method>'
    And print  '<status>'

    Examples: 
      | url                   | path                  | method | status |
      | http://localhost:9191 | /normal/webapi/all    | Get    |    200 |
      | http://localhost:9191 | /normal/webapi/add    | Post   |    201 |
      | http://localhost:9191 | /normal/webapi/update | Put    |    201 |
