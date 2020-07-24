*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
ซื้อ Xiaomi วัดความดันใน Shopee 
    เช็คยอดสั่งซื้อทั้งหมด
    กดปุ่ม iBanking
    เช็คธนาคารจำนวนธนาคาร
    เช็คการชำระเงินทั้งหมด

*** Keywords ***
เช็คยอดสั่งซื้อทั้งหมด
    Wait Until Element Contains    

กดปุ่ม iBanking

เช็คธนาคารจำนวนธนาคาร
    Wait Until Element Contains

เช็คการชำระเงินทั้งหมด
    Wait Until Element Contains