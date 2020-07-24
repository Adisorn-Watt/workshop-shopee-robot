*** Variables ***
${URL}    https://shopee.co.th/(Pre-Order)-Xiaomi-iHealth-Blood-Pressure-Monitor-2-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%94%E0%B8%B1%E0%B8%99-%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99-2-i.8172430.1307643368

*** Settings ***
Library    SeleniumLibrary
Test Template    ซื้อของจาก shopee

*** Test Cases ***              Username                Pass
ซื้อของจาก shopee ด้วยชื่อ phison    phisonk@hotmail.com    1234


*** Keywords ***

# Phison

ซื้อของจาก shopee
    [Arguments]    ${Username}    ${Pass}
    เปิดเว็บ
    กดเลือกภาษา
    เช็คว่าชื่อของที่จะค้นหาตรงไหม
    เช็คราคาสินค้าในหน้าสินค้า
    เช็คชื่อร้านค้า
    กดปุ่ม "ซื้อสินค้า"
    ใส่ข้อความ Username
    ใส่ข้อความ password
    กดปุ่ม เข้าสู่ระบบ
    เช็คชื่อในรถเข็น
    เช็คราคาต่อชิ้นในรถเข็น
    เช็คจำนวนในรถเข็น
    เช็คราคารวมในรถเข็น

เปิดเว็บ
    Open Browser    ${URL}    chrome

ปิดเว็บ
    Close Browser
กดเลือกภาษา
    Wait Until Page Contains Element   //*[@id="modal"]/div[1]/div[1]/div/div[3]/div[1]/button
    Click Element    //*[@id="modal"]/div[1]/div[1]/div/div[3]/div[1]/button
เช็คว่าชื่อของที่จะค้นหาตรงไหม
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[1]/span    (Pre-Order) Xiaomi iHealth Blood Pressure Monitor 2 - เครื่องวัดความดัน รุ่น 2

เช็คราคาสินค้าในหน้าสินค้า
    Wait Until Page Contains Element    //*[@id="main"]/div/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[3]/div/div/div/div/div/div
    Element Text Should Be    //*[@id="main"]/div/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[3]/div/div/div/div/div/div    ฿11,160

เช็คชื่อร้านค้า
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[2]/div[3]/div[1]/div[1]/div/div[1]    pumper2500
# Mind
กดปุ่ม "ซื้อสินค้า"
    Click Button    ซื้อสินค้า

ใส่ข้อความ Username
    [Arguments]    ${Username}
    Input Text    loginKey    ${Username}

ใส่ข้อความ password
    [Arguments]    ${Pass}
    Input Text   password    ${Pass}

กดปุ่ม เข้าสู่ระบบ
    Click Button    เข้าสู่ระบบ

#  โค้ดน้องเกรซ
เช็คชื่อในรถเข็น
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[3]/div[1]/div[3]/div/div[2]/div/div/div[2]/div/div    (Pre-Order) Xiaomi iHealth Blood Pressure Monitor 2 - เครื่องวัดความดัน รุ่น 2

เช็คราคาต่อชิ้นในรถเข็น
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[3]/div[1]/div[3]/div/div[2]/div/div/div[4]    ฿11,160

เช็คจำนวนในรถเข็น
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[3]/div[1]/div[3]/div/div[2]/div/div/div[5]/div[1]/input    1

เช็คราคารวมในรถเข็น
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[3]/div[1]/div[3]/div/div[2]/div/div/div[6]    ฿11,160

