*** Settings ***
Resource    variable.robot

*** Keywords ***

Open Browser by firefox
    Open Browser    https://abhigyank.github.io/To-Do-List/   firefox
    Sleep  3s

Input Add Item COMPLETE
    Click Element    xpath=/html/body/div/div/div[2]/div
    Input Text      new-task      ${Test_Complete}
    Click Element   xpath=/html/body/div/div/div[2]/button
    Sleep  2s
    Click Element    xpath=/html/body/div/div/div[1]/a[2]
    Click Element    xpath=/html/body/div/div/div[3]/ul/li/label/span[4]
    Sleep  2s
    

Input Add Item DELETE
    Click Element    xpath=/html/body/div/div/div[2]/div
    Input Text      new-task      ${Test_Delete}
    Click Element   xpath=/html/body/div/div/div[2]/button
    Sleep  2s
    Click Element    xpath=/html/body/div/div/div[1]/a[2]
    Click Element    xpath=/html/body/div/div/div[3]/ul/li/button/span
    Sleep  2s

Check COMPLETE
    Click Element    xpath=/html/body/div/div/div[1]/a[3]/span
    Sleep  5s