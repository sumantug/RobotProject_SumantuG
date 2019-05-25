*** Settings ***
Library           SeleniumLibrary

Suite Setup    Log    I am inside Test Suite   
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup    Log    I am inside Test Setup             
Test Teardown    Log    I am inside TestSetup Teardown 

Default Tags    sanity   

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World... 

MySecondTest
    Log    I am inside Second Test
    Set Tags    regression

MyThirdTest
    [Tags]    smoke
    Log    I am inside Third Test
    

MyFourthTest
    [Tags]    regression
    Log    I am inside fourth Test

    
# FirstSeleniumTest
    # Open Browser                 https://google.com        chrome
    # Set Browser Implicit Wait    5
    # Input Text                  name=q                     Automation step by step
    # Press Keys                  name=q                     ENTER
  # #  Click Button                name=btnK    
    # Sleep                        5    
    # Close Browser
    # Log    Test Completed
    
# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser    ${URL}        chrome
    # Set Browser Implicit Wait    5
    # LoginKW          
    # Click Element    id=welcome
    # Click Link    link=Logout    
    # Close Browser    
    # Log    Test Completed
    # Log    This test was completed by %{username} on %{os} 
    # #Refer Robot Framework user guide for all documentations   
    
    
# *** Variables ***
# ${URL}    https://opensource-demo.orangehrmlive.com/   
# @{CREDENTIALS}    Admin    admin123


# *** Keywords ***
# LoginKW
    # Input Text    xpath=.//*[@name="txtUsername"]    @{CREDENTIALS}[0]
    # Input Password    xpath=.//*[@name="txtPassword"]    @{CREDENTIALS}[1]     
    # Click Button    id=btnLogin