*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
นายไทจิ ยามาโตะ ซื้อ Earth DVD Game 1 อัน จ่ายด้วย LinePay
    Search สินค้าที่ต้องการ
    เช็คข้อมูลสินค้า
    กดสินค้าใส่ตะกร้า
    เช็คข้อมูลสินค้าและราคารวม
    เลือกวิธีจัดส่งสินค้า
    Checkout
    กรอกที่อยู่จัดส่ง
    ยืนยันที่อยู่
    เลือกวิธีการชำระเงิน
    เช็ครายละเอียดของสินค้าที่สั่ง
    กดยืนยันการสั่งซื้อ
    เช็คหมายเลขคำสั่งซื้อ
    ทบทวนรายละเอียดของสินค้าที่สั่งซื้อ


*** Keywords ***
Search สินค้าที่ต้องการ
    เลือกอายุ    Select From List by Value    age    over8
    เลือกเพศ    Select From List by Value    gender    neutral
    กด search    Click Button    btn_search
    เช็คผลลัพธ์การค้นหา    Wait Until Element Contains    result    results for Neutral and over 8
    คลิกเลือกของเล่น    Click Element    list_11