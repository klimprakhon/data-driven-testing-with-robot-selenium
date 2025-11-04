*** Settings ***
Library    DataDriver    login_data.csv
Library    SeleniumLibrary
Resource    login_keywords.resource
Test Template    Login

*** Test Cases ***
Login Test

***Keywords***
Login
    [Arguments]    ${username}    ${password}    ${expected_message}
    เข้าหน้า Web
    กรอก Username    ${username}
    กรอก Password    ${password}
    กดปุ่ม Login
    ตรวจสอบว่าการแสดงผลข้อความการ Login    ${expected_message}
