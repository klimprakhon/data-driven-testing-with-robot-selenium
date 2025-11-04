***Settings***
Library    SeleniumLibrary

***Keywords***
เข้าหน้า Web
    Open Browser    url=https://demo-login-workshop.vercel.app/    browser=headlesschrome

กรอก Username
    [Arguments]    ${username}
    Input Text    id:username_field    ${username}

กรอก Password
    [Arguments]    ${password}
    Input Password    id:password_field    ${password}

กดปุ่ม Login
    Click Button    id:login_button
    Wait Until Element Is Not Visible    id:login_button

ตรวจสอบว่าการแสดงผลข้อความการ Login
    [Arguments]    ${expected_message}
    Page Should Contain    ${expected_message}
    # Element Should Contain    locator=id:container    expected=${expected_message}
