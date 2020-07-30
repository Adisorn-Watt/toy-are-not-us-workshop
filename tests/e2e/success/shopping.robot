*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
นายไทจิ ยามาโตะ ซื้อ Earth DVD Game 1 อัน จ่ายด้วย LinePay
<<<<<<< HEAD
<<<<<<< HEAD
    Search สินค้าที่ต้องการ
    เช็คข้อมูลสินค้า         
=======
    Search สินค้าที่ต้องการ
    เช็คข้อมูลสินค้า
>>>>>>> c3e0994d1c10d0f162d9dc3e0ba202121bc3b914
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

<<<<<<< HEAD
*** Keywords ***
# Grace's code
เช็คข้อมูลสินค้า         
    เช็คชื่อสินค้า
    เช็ครูปสินค้า
    เช็คแบรนด์สินค้า
    เช็คเพศที่เหมาะสมของสินค้า
    เช็คอายุที่เหมาะสมของสินค้า
    เช็คราคาสินค้า
    เช็คสถานะสินค้า
กดสินค้าใส่ตะกร้า
    เลือกจำนวนสินค้า
    กด add to cart

เช็คชื่อสินค้า
    Wait Until Page Contains    Earth DVD Game
เช็ครูปสินค้า
    Wait Until Element Contains    id:toy_image
เช็คแบรนด์สินค้า
    Wait Until Page Contains    VideoVroom
เช็คเพศที่เหมาะสมของสินค้า
    Wait Until Page Contains    Neutral
เช็คอายุที่เหมาะสมของสินค้า
    Wait Until Page Contains    over 8
เช็คราคาสินค้า
    Wait Until Page Contains    34.99
เช็คสถานะสินค้า
    Wait Until Element Contains    id:toy_avb
เลือกจำนวนสินค้า
    Select From List By value    id:quantity    1   
กด add to cart
    Click Button    id:btn_addcart 
=======
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
>>>>>>> 62580ac0a1eb8109723fb7a208921aa0a0e5d945
=======

*** Keywords ***
Search สินค้าที่ต้องการ
    เลือกอายุ    Select From List by Value    age    over8
    เลือกเพศ    Select From List by Value    gender    neutral
    กด search    Click Button    btn_search
    เช็คผลลัพธ์การค้นหา    Wait Until Element Contains    result    results for Neutral and over 8
    คลิกเลือกของเล่น    Click Element    list_11
>>>>>>> c3e0994d1c10d0f162d9dc3e0ba202121bc3b914
