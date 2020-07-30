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