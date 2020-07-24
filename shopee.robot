*** Variables ***
${URL}    https://shopee.co.th/(Pre-Order)-Xiaomi-iHealth-Blood-Pressure-Monitor-2-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%94%E0%B8%B1%E0%B8%99-%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99-2-i.8172430.1307643368

*** Settings ***
Library    SeleniumLibrary
Test Template    ซื้อของจาก shopee

*** Test Cases ***              Username                Pass
ซื้อของจาก shopee ด้วยชื่อ phison    phisonk@hotmail.com    1234


*** Keywords ***
ซื้อของจาก shopee
    [Arguments]    ${Username}    ${Pass}
    เปิดเว็บ
    เช็คว่าชื่อของที่จะค้นหาตรงไหม
เปิดเว็บ
    Open Browser    ${URL}    chrome
ปิดเว็บ
    Close Browser
เช็คว่าชื่อของที่จะค้นหาตรงไหม
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[1]/span    (Pre-Order) Xiaomi iHealth Blood Pressure Monitor 2 - เครื่องวัดความดัน รุ่น 2
