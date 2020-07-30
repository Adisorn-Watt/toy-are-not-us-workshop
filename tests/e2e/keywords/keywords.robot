*** Variables ***
${URL}    http://www.localhost.com

*** Keywords ***

ซื้อของในร้านค้า
    [Arguments]    ${AGE}    ${GENDER}    ${PRODUCT_ID}    ${PRODUCT_NAME}
    เปิดเว็ป
    Search สินค้าที่ต้องการ    ${AGE}    ${GENDER}    ${PRODUCT_ID}
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
    ปิดเว็ป
เปิดเว็ป
    Open Browser    ${URL}    chrome
ปิดเว็ป
    Close Browser
#earth
Search สินค้าที่ต้องการ
    [Arguments]    ${AGE}    ${GENDER}    ${PRODUCT_ID}
    เลือกอายุ    ${AGE}
    เลือกเพศ    ${GENDER}
    กด search
    เช็คผลลัพธ์การค้นหา
    คลิกเลือกของเล่น    ${PRODUCT_ID}

เลือกอายุ    
    Select From List by Value    age    ${AGE}   #over8
เลือกเพศ    
    Select From List by Value    gender    ${GENDER}   #neutral
กด search    
    Click Button    btn_search
เช็คผลลัพธ์การค้นหา    
    Wait Until Element Contains    result    results for ${GENDER} and ${AGE}
คลิกเลือกของเล่น    
    Click Element    list_${PRODUCT_ID}

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
    [Arguments]   ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}
    ${PRODUCT_AVAILABLE}    ${PRODUCT_PRICE}    ${PRODUCT_QUANTITY}     ${TOTAL_PRICE}   
   เช็คชื่อสินค้า    ${PRODUCT_NAME} 
   เช็คแบรนด์สินค้า     ${PRODUCT_BRAND}
   เช็คเพศที่เหมาะสม      ${PRODUCT_GENDER}
   เช็คอายุที่เหมาะสม   ${PRODUCT_AGE}
   เช็คสถานะสินค้า     ${PRODUCT_AVAILABLE}
   เช็คราคาสินค้า      ${PRODUCT_PRICE}
   เช็คจำนวนสินค้า      ${PRODUCT_QUANTITY}
   เช็คราคาสินค้าทั้งหมด     ${TOTAL_PRICE}

เช็คชื่อสินค้า
   Wait Until Element Contains    td_toy_name    ${PRODUCT_NAME} 

เช็คแบรนด์สินค้า
   Wait Until Element Contains    toy_brand    ${PRODUCT_BRAND}

เช็คเพศที่เหมาะสม
   Wait Until Element Contains    toy_gender   ${PRODUCT_GENDER}

เช็คอายุที่เหมาะสม
   Wait Until Element Contains    toy_age    ${PRODUCT_AGE}

เช็คสถานะสินค้า
   Wait Until Element Contains    toy_available    ${PRODUCT_AVAILABLE}

เช็คราคาสินค้า
   Wait Until Element Contains    toy_price    ${PRODUCT_PRICE}

เช็คจำนวนสินค้า
   Wait Until Element Contains    toy_quantity    ${PRODUCT_QUANTITY}

เช็คราคาสินค้าทั้งหมด
   Wait Until Element Contains    subtotal    ${TOTAL_PRICE}

เลือกวิธีจัดส่งสินค้า
    [Arguments]    ${SHIPPING_METHOD}    ${SHIPPING_FEE}
   เลือกวิธีจัดส่ง-EMS   ${SHIPPING_METHOD}
   เช็คราคาค่าจัดส่ง    ${SHIPPING_FEE}

เลือกวิธีจัดส่ง-EMS 
   Select radio button    shipping_method    ${SHIPPING_METHOD}

เช็คราคาค่าจัดส่ง
   Wait Until Element Contains    shipping_fee    ${SHIPPING_FEE}

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