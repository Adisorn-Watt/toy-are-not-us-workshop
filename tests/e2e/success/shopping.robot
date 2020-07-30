*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
นายไทจิ ยามาโตะ ซื้อ Earth DVD Game 1 อัน จ่ายด้วย LinePay
<<<<<<< HEAD
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
<<<<<<< HEAD
เช็คข้อมูลสินค้าและราคารวม
   เช็คชื่อสินค้า
   เช็คแบรนด์สินค้า
   เช็คเพศที่เหมาะสม
   เช็คอายุที่เหมาะสม
   เช็คสถานะสินค้า
   เช็คราคาสินค้า
   เช็คจำนวนสินค้า
   เช็คจำนวนสินค้า
   เช็คราคาสินค้าทั้งหมด

เช็คชื่อสินค้า
   Wait Until Element Contains    td_toy_name    Earth DVD Game

เช็คแบรนด์สินค้า
   Wait Until Element Contains    toy_brand    VideoVroom

เช็คเพศที่เหมาะสม
   Wait Until Element Contains    toy_gender   Neutral

เช็คอายุที่เหมาะสม
   Wait Until Element Contains    toy_age    over8

เช็คสถานะสินค้า
   Wait Until Element Contains    toy_available    InStock

เช็คราคาสินค้า
   Wait Until Element Contains    toy_price    1,049.71

เช็คจำนวนสินค้า
   Wait Until Element Contains    toy_quatity    1

เช็คราคาสินค้าทั้งหมด
   Wait Until Element Contains    subtotal    1,049.71

เลือกวิธีจัดส่งสินค้า
   เลือกวิธีจัดส่ง-EMS
   เช็คราคาค่าจัดส่ง

เลือกวิธีจัดส่ง-EMS 
   Select radio button    shipping_method    EMS

เช็คราคาค่าจัดส่ง
   Wait Until Element Contains    shipping_fee    30.00

Checkout
   Click Button    btn_checkout
=======
>>>>>>> 62580ac0a1eb8109723fb7a208921aa0a0e5d945
=======
Search สินค้าที่ต้องการ
    เลือกอายุ    Select From List by Value    age    over8
    เลือกเพศ    Select From List by Value    gender    neutral
    กด search    Click Button    btn_search
    เช็คผลลัพธ์การค้นหา    Wait Until Element Contains    result    results for Neutral and over 8
    คลิกเลือกของเล่น    Click Element    list_11
>>>>>>> c3e0994d1c10d0f162d9dc3e0ba202121bc3b914
>>>>>>> 6171f922b51932d89abe02f33fff1f5418798bf9
>>>>>>> 3615f905fc80e4b0d2cd39317db534142e031b2e
