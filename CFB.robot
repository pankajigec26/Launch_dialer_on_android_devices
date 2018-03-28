*** Settings ***
Documentation    This script starts apps on two phones
Library          AppiumLibrary
Library          Collections
Library          Process


*** Variables ***

*** Test Cases ***
Open_Dialer
    Log to console    ${Device.${phone}.server}
    setup and open dialer

    


*** Keywords ***
setup and open dialer
    ${androiddriver1}=    Open Application    ${Device.${phone}.server}    platformName=android    platformVersion=${Device.${phone}.platfrom}    deviceName=${Device.${phone}.Device_name}    automationName=${Device.${phone}.automation}
    ...    appPackage=${Device.${phone}.appPackage}    newCommandTimeout=2500    appActivity=${Device.${phone}.appActivity}
    Set Suite Variable    ${androiddriver1}
