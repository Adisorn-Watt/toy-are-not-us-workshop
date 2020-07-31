*** Variables ***
${URL}    http://localhost:4200/search


*** Keywords ***

ซื้อของในร้านค้า
    [Arguments]    ${PRODUCT_NAME}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_PRICE}    ${PRODUCT_BRAND}    ${PRODUCT_AVAILABLE}    ${NAME}    ${ADDESS1}    ${ADDESS2}    ${CITY}    ${PROVINCE}    ${POSTCODE}    ${SHIPPING_METHOD}    ${PRODUCT_QUANTITY}     ${TOTAL_PRICE}
    เปิดเว็ป
    Search สินค้าที่ต้องการ    ${PRODUCT_AGE}    ${PRODUCT_GENDER}    
    เช็คข้อมูลสินค้า     ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_PRICE}    ${PRODUCT_AVAILABLE}    
    กดสินค้าใส่ตะกร้า
    เช็คข้อมูลสินค้าและราคารวม    ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_AVAILABLE}    ${PRODUCT_PRICE}    ${PRODUCT_QUANTITY}     ${TOTAL_PRICE}
    เลือกวิธีจัดส่งสินค้า
    Checkout
    กรอกที่อยู่จัดส่ง    ${NAME}    ${ADDESS1}    ${ADDESS2}    ${CITY}    ${PROVINCE}    ${POSTCODE}
    ยืนยันที่อยู่
    เลือกวิธีการชำระเงิน    
    เช็ครายละเอียดของสินค้าที่สั่ง    ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_AVAILABLE}    ${PRODUCT_PRICE}    ${PRODUCT_QUANTITY}     ${TOTAL_PRICE}
    กดยืนยันการสั่งซื้อ
    # เช็คหมายเลขคำสั่งซื้อ
    # ทบทวนรายละเอียดของสินค้าที่สั่งซื้อ
    ปิดเว็ป
เปิดเว็ป
    Open Browser    ${URL}    chrome
ปิดเว็ป
    Close Browser
#earth
Search สินค้าที่ต้องการ
    [Arguments]    ${PRODUCT_AGE}    ${PRODUCT_GENDER}
    # เลือกอายุ    ${PRODUCT_AGE}
    # เลือกเพศ    ${PRODUCT_GENDER}
    # # กด search
    # เช็คผลลัพธ์การค้นหา
    # คลิกเลือกของเล่น    

# เลือกอายุ    
    Mouse over    id:age
    Click Element    id:over8
    Mouse over    gender
    Click Element    id:neutral
    # Select From List by Value    age    ${PRODUCT_AGE}   #over8
# เลือกเพศ    
    # Select From List by Value    gender    ${PRODUCT_GENDER}   #neutral
# กด search    
#     Click Button    btn_search
# เช็คผลลัพธ์การค้นหา    
    # Wait Until Page Contains    results for ${PRODUCT_GENDER} and ${PRODUCT_AGE}
# คลิกเลือกของเล่น    
    Mouse over    id:product_11
    Click Element    //*[@id="product_11"]/th[2]

# Grace's code
เช็คข้อมูลสินค้า   
    [Arguments]    ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_PRICE}    ${PRODUCT_AVAILABLE}
#     เช็คชื่อสินค้า    ${PRODUCT_NAME}
#     เช็ครูปสินค้า    
#     เช็คแบรนด์สินค้า    ${PRODUCT_BRAND}
#     เช็คเพศที่เหมาะสมของสินค้า    ${PRODUCT_GENDER}
#     เช็คอายุที่เหมาะสมของสินค้า    ${PRODUCT_AGE}
#     เช็คราคาสินค้า    ${PRODUCT_PRICE}
#     เช็คสถานะสินค้า    ${PRODUCT_AVAILABLE}
# กดสินค้าใส่ตะกร้า
#     เลือกจำนวนสินค้า
#     กด add to cart

# เช็คชื่อสินค้า
    Wait Until Page Contains    ${PRODUCT_NAME}
# เช็ครูปสินค้า
    # Wait Until Element Contains    id:toy_image
#เช็คแบรนด์สินค้า
   Wait Until Page Contains    ${PRODUCT_BRAND}
# เช็คเพศที่เหมาะสมของสินค้า
    Wait Until Page Contains    ${PRODUCT_GENDER}
# เช็คอายุที่เหมาะสมของสินค้า
    Wait Until Page Contains    ${PRODUCT_AGE}
#เช็คราคาสินค้า
   Wait Until Page Contains    ${PRODUCT_PRICE}
#เช็คสถานะสินค้า
   Wait Until Page Contains    ${PRODUCT_AVAILABLE}
# เลือกจำนวนสินค้า
    Mouse over    id:quantity
    Click Element    //*[@id="quantity"]/option[2]
กดสินค้าใส่ตะกร้า
    Click Button    id:btn_addcart

##fah
เช็คข้อมูลสินค้าและราคารวม
    [Arguments]   ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_AVAILABLE}    ${PRODUCT_PRICE}    ${PRODUCT_QUANTITY}     ${TOTAL_PRICE}   
#    เช็คชื่อสินค้า2    ${PRODUCT_NAME} 
#    เช็คแบรนด์สินค้า     ${PRODUCT_BRAND}
#    เช็คเพศที่เหมาะสม      ${PRODUCT_GENDER}
#    เช็คอายุที่เหมาะสม   ${PRODUCT_AGE}
#    เช็คสถานะสินค้า     ${PRODUCT_AVAILABLE}
#    เช็คราคาสินค้า      ${PRODUCT_PRICE}
#    เช็คจำนวนสินค้า      ${PRODUCT_QUANTITY}
#    เช็คราคาสินค้าทั้งหมด     ${TOTAL_PRICE}

# เช็คชื่อสินค้า2
   Wait Until Page Contains    ${PRODUCT_NAME}

# เช็คแบรนด์สินค้า
   Wait Until Page Contains    ${PRODUCT_GENDER}

# เช็คเพศที่เหมาะสม
   Wait Until Page Contains   ${PRODUCT_GENDER}

# เช็คอายุที่เหมาะสม
   Wait Until Page Contains    ${PRODUCT_AGE}

# เช็คสถานะสินค้า
   Wait Until Page Contains    ${PRODUCT_AVAILABLE}

# เช็คราคาสินค้า
#    Wait Until Page Contains    ${PRODUCT_PRICE}

# เช็คจำนวนสินค้า
   Wait Until Page Contains    ${PRODUCT_QUANTITY}

# เช็คราคาสินค้าทั้งหมด
   Wait Until Page Contains    ${TOTAL_PRICE}

เลือกวิธีจัดส่งสินค้า
#     [Arguments]    ${SHIPPING_METHOD}    ${SHIPPING_FEE}
#    เลือกวิธีจัดส่ง-EMS   ${SHIPPING_METHOD}
#    เช็คราคาค่าจัดส่ง    ${SHIPPING_FEE}

# เลือกวิธีจัดส่ง-EMS 
    Click Element    id:EMS

# เช็คราคาค่าจัดส่ง
#    Wait Until Element Contains    shipping_fee    ${SHIPPING_FEE}

Checkout
   Click Button    id:btn_checkout

#Shipping
กรอกที่อยู่จัดส่ง
    [Arguments]    ${NAME}    ${ADDESS1}    ${ADDESS2}    ${CITY}    ${PROVINCE}    ${POSTCODE}
#    กรอกชื่อ    ${NAME}
#    กรอกที่อยู่แถว 1   ${ADDESS1}
#    กรอกที่อยู่แถว 2    ${ADDESS2}
#    กรอกเมือง     ${CITY}
#    กรอกจังหวัด    ${PROVINCE}
#    กรอกรหัสไปรษณีย์   ${POSTCODE}
# ยืนยันที่อยู่
#    กด deliver to this address  

# กรอกชื่อ    
   Input Text    id:inputFullname    ${NAME}
# กรอกที่อยู่แถว 1    
   Input Text    id:inputAddress    ${ADDESS1}
# กรอกที่อยู่แถว 2    
   Input Text    id:inputAddress2     ${ADDESS2}
# กรอกเมือง    
   Input Text    id:inputCity    ${CITY}
# กรอกจังหวัด    
    Mouse over    id:province
    Click Element    //*[@id="province"]/option[34]
# กรอกรหัสไปรษณีย์    
   Input Text    id:post_code    ${POSTCODE}
# กด deliver to this address    
ยืนยันที่อยู่
   Click Button    id:btn_deliver

#ขวัญ
เลือกวิธีการชำระเงิน
    Click Element    id:Line_pay
เช็ครายละเอียดของสินค้าที่สั่ง
    [Arguments]   ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_AVAILABLE}    ${PRODUCT_PRICE}    ${PRODUCT_QUANTITY}     ${TOTAL_PRICE}
    # 
    # เช็คชื่อสินค้า2
   Wait Until Page Contains    ${PRODUCT_NAME}

# เช็คแบรนด์สินค้า
   Wait Until Page Contains    ${PRODUCT_GENDER}

# เช็คเพศที่เหมาะสม
   Wait Until Page Contains   ${PRODUCT_GENDER}

# เช็คอายุที่เหมาะสม
   Wait Until Page Contains    ${PRODUCT_AGE}

# เช็คสถานะสินค้า
   Wait Until Page Contains    ${PRODUCT_AVAILABLE}

กดยืนยันการสั่งซื้อ
    # กดคอนเฟิร์มออร์เดอร์
# กดเลือกวิธีการจ่ายเงิน
#     [Arguments]    ${PAY_METHOD}
#     Select Radio Button    pay_option    ${PAY_METHOD}
# เช็คหัวชื่อ table
#     Wait Until Element Contains    tb_name    Payment Methods
# เช็คหัวข้อ table
#     Wait Until Element Contains    tb_head    Items
#     Wait Until Element Contains    tb_head    Quantity
#     Wait Until Element Contains    tb_head    Price (THB)
# เช็คข้อมูลสินค้าที่สั่ง
#     [Arguments]    ${PRODUCT_NAME}    ${AGE}    ${GENDER}
#     Wait Until Element Contains    tb_tr_11    Earth DVD Game by VideoVroom
#     Wait Until Element Contains    tb_tr_11    ${GENDER}
#     Wait Until Element Contains    tb_tr_11    ${AGE}
#     Wait Until Element Contains    tb_tr_11    InStock
# เช็ควิธีการจัดส่ง
#     [Arguments]    ${SHIPPING_METHOD}
#     Wait Until Element Contains    shipping_method    ${SHIPPING_METHOD}
# เช็คราคาค่าของทั้งหมด
#     [Arguments]    ${ITEMS_COST}
#     Wait Until Element Contains    item_cost    ${ITEMS_COST}
# เช็คราคาค่าส่ง
#     [Arguments]    ${SHIPPING_FEE}
#     Wait Until Element Contains    shipping_fee    ${SHIPPING_FEE}
# เช็คราคารวม
#     [Arguments]    ${TOTAL_COST}
#     Wait Until Element Contains    total    ${TOTAL_COST}
# กดคอนเฟิร์มออร์เดอร์
    Click Button    id:btn_order

#thankyou page
# เช็คหมายเลขคำสั่งซื้อ
#     เช็ค Order Number    20200731001
# ทบทวนรายละเอียดของสินค้าที่สั่งซื้อ
#     เช็คข้อมูลสินค้าที่สั่ง
#     เช็คราคาค่าของทั้งหมด
#     เช็คราคาค่าส่ง
#     เช็คราคารวม
#     เช็ควิธีการชำระเงิน
#     เช็ควิธีการจัดส่ง
# เช็ค Order Number
#     [Arguments]    ${number}
#     Wait Until Element Contains    order_no    ${number}
# เช็ควิธีการชำระเงิน
#     Wait Until Element Contains    pay_method    linepay