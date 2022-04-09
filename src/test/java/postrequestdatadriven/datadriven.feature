Feature: To create job description

  Scenario Outline: To create job description in the test application <method>
    Given print '<url>'
    Then print '<path>'
    When print '<method>'
    And print '<status>'

    Examples: 
      | url                   |  | path              |  | method |  | status |
      | http://localhost:9191 |  | normal/webapi/all |  | get    |  |    200 |
      | http://localhost:9191 |  | normal/webapi/add |  | post   |  |    201 |
      | http://localhost:9191 |  | normal/webapi/add |  | put    |  |    201 |

  Scenario Outline: To create job description <method>
    Given print '<url>'
    Then print '<path>'
    When print '<method>'
    And print '<status>'