*** Settings ***
Library    SeleniumLibrary
Resource    login_keywords.resource
Test Setup    เข้าหน้า Web
Test Teardown    Close All Browsers


*** Test Cases ***
Login Valid
    Login    demo    mode    Login succeeded

Login Invalid with Username
    Login    demo2    mode    Login failed

Login Invalid with Password
    Login    demo    mode2    Login failed

Login Invalid with Username and Password
    Login    demo2    mode2    Login failed

***Keywords***
Login
    [Arguments]    ${username}    ${password}    ${expected_message}
    # เข้าหน้า Web
    กรอก Username    ${username}
    กรอก Password    ${password}
    กดปุ่ม Login
    ตรวจสอบว่าการแสดงผลข้อความการ Login    ${expected_message}