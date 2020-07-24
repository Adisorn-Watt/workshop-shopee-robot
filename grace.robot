*** Settings ***
Library    SeleniumLibrary
Test Setup    เปิด shoppee
Test Teardown    ปิด browser

*** Test Cases ***
เช็คในตะกร้า
    เช็คชื่อในรถเข็น
    เช็คราคาต่อชิ้นในรถเข็น
    เช็คจำนวนในรถเข็น
    เช็คราคารวมในรถเข็น

*** Variables ***
${URL}    https://shopee.co.th/shopping_cart/?itemIds=1307643368&shopId=8172430

**** Keywords ***
เปิด shoppee    
    Open Browser    ${URL}    Chrome

เช็คชื่อในรถเข็น
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[3]/div[1]/div[3]/div/div[2]/div/div/div[2]/div/div    (Pre-Order) Xiaomi iHealth Blood Pressure Monitor 2 - เครื่องวัดความดัน รุ่น 2

เช็คราคาต่อชิ้นในรถเข็น
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[3]/div[1]/div[3]/div/div[2]/div/div/div[4]    ฿11,160

เช็คจำนวนในรถเข็น
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[3]/div[1]/div[3]/div/div[2]/div/div/div[5]/div[1]/input    1

เช็คราคารวมในรถเข็น
    Wait Until Element Contains    //*[@id="main"]/div/div[2]/div[2]/div[3]/div[1]/div[3]/div/div[2]/div/div/div[6]    ฿11,160

ปิด browser
    Close Browser