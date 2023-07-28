*** Settings ***
Resource                  variable.robot
Resource                  keyword.robot

*** Test Case ***
Complete Task  
    Open Browser by firefox
    Input Add Item COMPLETE
    Check COMPLETE

Delete Task  
    Open Browser by firefox
    Input Add Item DELETE
    Check COMPLETE