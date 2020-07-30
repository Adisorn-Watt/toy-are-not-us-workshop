*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
นายไทจิ ยามาโตะ ซื้อ Earth DVD Game 1 อัน จ่ายด้วย LinePay
    1. เปิด browser
    2. เลือก อายุ
    3. เลือกเพศ
    4. กด search
    5. คลิกเลือกของเล่น
    6. เปลี่ยนหน้าเป็นข้อมูลของเล่นที่เลือก
    7. เลือกจำนวน
    8. กด add to cart
    9. เปลี่ยนไปหน้า shopping cart 
    10. เลือกวิธีจัดส่ง - EMS
    11. กด process to checkout
    12. กรอกที่อยู่
    13. กด deliver to this address
    14. เลือกช่องทางจ่ายเงิน - linepay
    15. กด place your order
    16. เปลี่ยนหน้า thank you



*** Keywords ***
#ขวัญ
เลือกวิธีการชำระเงิน
    กดเลือกวิธีการจ่ายเงิน
เช็ครายละเอียดของสินค้าที่สั่ง
    เช็คหัวชื่อ table 
    เช็คหัวข้อ table
    เช็คข้อมูลสินค้าที่สั่ง
    เช็ควิธีการจัดส่ง
    เช็คราคาค่าของทั้งหมด
    เช็คราคาค่าส่ง
    เช็คราคารวม
กดยืนยันการสั่งซื้อ
    กดคอนเฟิร์มออร์เดอร์
กดเลือกวิธีการจ่ายเงิน
    Select Radio Button    pay_option    linepay
เช็คหัวชื่อ table
    Wait Until Element Contains    tb_name    Payment Methods
เช็คหัวข้อ table
    Wait Until Element Contains    tb_head    Items
    Wait Until Element Contains    tb_head    Quantity
    Wait Until Element Contains    tb_head    Price (THB)
เช็คข้อมูลสินค้าที่สั่ง
    Wait Until Element Contains    tb_tr_11    Earth DVD Game by VideoVroom
    Wait Until Element Contains    tb_tr_11    Neutral
    Wait Until Element Contains    tb_tr_11    over8
    Wait Until Element Contains    tb_tr_11    InStock
เช็ควิธีการจัดส่ง
    Wait Until Element Contains    shipping_method    EMS
เช็คราคาค่าของทั้งหมด
    Wait Until Element Contains    item_cost    1,049.70
เช็คราคาค่าส่ง
    Wait Until Element Contains    shipping_fee    30.00
เช็คราคารวม
    Wait Until Element Contains    total    1,079.70
กดคอนเฟิร์มออร์เดอร์
    Click Button    btn_order



    