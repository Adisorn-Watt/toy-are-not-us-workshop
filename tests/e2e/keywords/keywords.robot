*** Variables ***
${URL}    http://www.localhost.com

*** Keywords ***

ซื้อของในร้านค้า
    [Arguments]    ${PRODUCT_NAME}
    เปิดเว็ป
    Search สินค้าที่ต้องการ
    เช็คข้อมูลสินค้า         
    กดสินค้าใส่ตะกร้า
    เช็คข้อมูลสินค้าและราคารวม
    เลือกวิธีจัดส่งสินค้า
    Checkout
    กรอกที่อยู่จัดส่ง
    ยืนยันที่อยู่
    เลือกวิธีการชำระเงิน    linepay
    เช็ครายละเอียดของสินค้าที่สั่ง
    กดยืนยันการสั่งซื้อ
    เช็คหมายเลขคำสั่งซื้อ
    ทบทวนรายละเอียดของสินค้าที่สั่งซื้อ
    ปิดเว็ป
เปิดเว็ป
    Open Browser    ${URL}    chrome
ปิดเว็ป
    Close Browser
#earth
Search สินค้าที่ต้องการ
    เลือกอายุ
    เลือกเพศ
    กด search
    เช็คผลลัพธ์การค้นหา
    คลิกเลือกของเล่น

เลือกอายุ    
    Select From List by Value    age    over8
เลือกเพศ    
    Select From List by Value    gender    neutral
กด search    
    Click Button    btn_search
เช็คผลลัพธ์การค้นหา    
    Wait Until Element Contains    result    results for Neutral and over 8
คลิกเลือกของเล่น    
    Click Element    list_11

# Grace's code
เช็คข้อมูลสินค้า         
    เช็คชื่อสินค้า
    เช็ครูปสินค้า
    เช็คแบรนด์สินค้า
    เช็คเพศที่เหมาะสมของสินค้า
    เช็คอายุที่เหมาะสมของสินค้า
    เช็คราคาสินค้า    34.99
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

##fah
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

#Shipping
กรอกที่อยู่จัดส่ง
   กรอกชื่อ    
   กรอกที่อยู่แถว 1   
   กรอกที่อยู่แถว 2    
   กรอกเมือง    
   กรอกจังหวัด    
   กรอกรหัสไปรษณีย์   
ยืนยันที่อยู่
   กด deliver to this address  

กรอกชื่อ    
   Input Text    full_name    ไทจิ ยามาโตะ
กรอกที่อยู่แถว 1    
   Input Text    addess1    ถนนเลียบชายกว๊าน ตำบลเวียง
กรอกที่อยู่แถว 2    
   Input Text    addess2    อำเภอเมืองพะเยา
กรอกเมือง    
   Input Text    city    พะเยา
กรอกจังหวัด    
   Input Text    province    พะเยา
กรอกรหัสไปรษณีย์    
   Input Text    post_code    56000
กด deliver to this address    
   Click Button    btn_deliver

#ขวัญ
เลือกวิธีการชำระเงิน
    [Arguments]    ${PAY_METHOD}
    กดเลือกวิธีการจ่ายเงิน    ${PAY_METHOD}
เช็ครายละเอียดของสินค้าที่สั่ง
    [Arguments]    ${PRODUCT_NAME}    ${AGE}    ${GENDER}    ${SHIPPING_METHOD}    ${ITEMS_COST}    ${SHIPPING_FEE}    ${TOTAL_COST}
    เช็คหัวชื่อ table
    เช็คหัวข้อ table
    เช็คข้อมูลสินค้าที่สั่ง    ${PRODUCT_NAME}    ${AGE}    ${GENDER}
    เช็ควิธีการจัดส่ง    ${SHIPPING_METHOD}
    เช็คราคาค่าของทั้งหมด    ${ITEMS_COST}
    เช็คราคาค่าส่ง    ${SHIPPING_FEE}
    เช็คราคารวม    ${TOTAL_COST}
กดยืนยันการสั่งซื้อ
    กดคอนเฟิร์มออร์เดอร์
กดเลือกวิธีการจ่ายเงิน
    [Arguments]    ${PAY_METHOD}
    Select Radio Button    pay_option    ${PAY_METHOD}
เช็คหัวชื่อ table
    Wait Until Element Contains    tb_name    Payment Methods
เช็คหัวข้อ table
    Wait Until Element Contains    tb_head    Items
    Wait Until Element Contains    tb_head    Quantity
    Wait Until Element Contains    tb_head    Price (THB)
เช็คข้อมูลสินค้าที่สั่ง
    [Arguments]    ${PRODUCT_NAME}    ${AGE}    ${GENDER}
    Wait Until Element Contains    tb_tr_11    Earth DVD Game by VideoVroom
    Wait Until Element Contains    tb_tr_11    ${GENDER}
    Wait Until Element Contains    tb_tr_11    ${AGE}
    Wait Until Element Contains    tb_tr_11    InStock
เช็ควิธีการจัดส่ง
    [Arguments]    ${SHIPPING_METHOD}
    Wait Until Element Contains    shipping_method    ${SHIPPING_METHOD}
เช็คราคาค่าของทั้งหมด
    [Arguments]    ${ITEMS_COST}
    Wait Until Element Contains    item_cost    ${ITEMS_COST}
เช็คราคาค่าส่ง
    [Arguments]    ${SHIPPING_FEE}
    Wait Until Element Contains    shipping_fee    ${SHIPPING_FEE}
เช็คราคารวม
    [Arguments]    ${TOTAL_COST}
    Wait Until Element Contains    total    ${TOTAL_COST}
กดคอนเฟิร์มออร์เดอร์
    Click Button    btn_order

#thankyou page
เช็คหมายเลขคำสั่งซื้อ
    เช็ค Order Number    20200731001
ทบทวนรายละเอียดของสินค้าที่สั่งซื้อ
    เช็คข้อมูลสินค้าที่สั่ง
    เช็คราคาค่าของทั้งหมด
    เช็คราคาค่าส่ง
    เช็คราคารวม
    เช็ควิธีการชำระเงิน
    เช็ควิธีการจัดส่ง
เช็ค Order Number
    [Arguments]    ${number}
    Wait Until Element Contains    order_no    ${number}
เช็ควิธีการชำระเงิน
    Wait Until Element Contains    pay_method    linepay