*** Variables ***
${URL}    http://localhost/4200

*** Keywords ***

ซื้อของในร้านค้า
    [Arguments]    ${PRODUCT_NAME}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_PRICE}    ${PRODUCT_BRAND}    ${PRODUCT_AVAILABLE}    ${NAME}    ${AGE}    ${GENDER}    ${ADDESS1}    ${ADDESS2}    ${CITY}    ${PROVINCE}    ${POSTCODE}    ${SHIPPING_METHOD}
    เปิดเว็ป
    Search สินค้าที่ต้องการ    ${AGE}    ${GENDER}    ${PRODUCT_ID}
    เช็คข้อมูลสินค้า     ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_PRICE}    ${PRODUCT_AVAILABLE}    
    กดสินค้าใส่ตะกร้า
    เช็คข้อมูลสินค้าและราคารวม
    เลือกวิธีจัดส่งสินค้า
    Checkout
    กรอกที่อยู่จัดส่ง
    ยืนยันที่อยู่
    เลือกวิธีการชำระเงิน    ${SHIPPING_METHOD}
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
    [Arguments]    ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_PRICE}    ${PRODUCT_AVAILABLE}
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
    Wait Until Page Contains    ${PRODUCT_NAME}
เช็ครูปสินค้า
    Wait Until Element Contains    id:toy_image
#เช็คแบรนด์สินค้า
#    Wait Until Page Contains    ${PRODUCT_BRAND}
เช็คเพศที่เหมาะสมของสินค้า
    Wait Until Page Contains    ${PRODUCT_GENDER}
เช็คอายุที่เหมาะสมของสินค้า
    Wait Until Page Contains    ${PRODUCT_AGE}
#เช็คราคาสินค้า
#    Wait Until Page Contains    ${PRODUCT_PRICE}
#เช็คสถานะสินค้า
#    Wait Until Page Contains    ${PRODUCT_AVAILABLE}
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
    [Arguments]    ${NAME}    ${ADDESS1}    ${ADDESS2}    ${CITY}    ${PROVINCE}    ${POSTCODE}
   กรอกชื่อ    ${NAME}
   กรอกที่อยู่แถว 1   ${ADDESS1}
   กรอกที่อยู่แถว 2    ${ADDESS2}
   กรอกเมือง     ${CITY}
   กรอกจังหวัด    ${PROVINCE}
   กรอกรหัสไปรษณีย์   ${POSTCODE}
ยืนยันที่อยู่
   กด deliver to this address  

กรอกชื่อ    
   Input Text    full_name    ${NAME}
กรอกที่อยู่แถว 1    
   Input Text    addess1    ${ADDESS1}
กรอกที่อยู่แถว 2    
   Input Text    addess2     ${ADDESS2}
กรอกเมือง    
   Input Text    city    ${CITY}
กรอกจังหวัด    
   Input Text    province    ${PROVINCE}
กรอกรหัสไปรษณีย์    
   Input Text    post_code    ${POSTCODE}
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