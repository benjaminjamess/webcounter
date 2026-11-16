*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Get Title  ==  Laskuri
    Get Text  body  *=  nappia painettu 0 kertaa

When button pressed twice the counter is two
    Go To  ${HOME_URL}
    Click  button >> text=Paina
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 2 kertaa

*** Test Cases ***
Counter can be set to a chosen value
    Go To    ${HOME_URL}
    Fill Text    input[name="value"]    10
    Click    text=Set counter
    Get Text    body    *=    nappia painettu 10 kertaa
