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
    Mouse over    id:age
    Click Element    id:over8
    Mouse over    gender
    Click Element    id:neutral   
    Mouse over    id:product_11
    Click Element    //*[@id="product_11"]/th[2]

# Grace's code
เช็คข้อมูลสินค้า   
    [Arguments]    ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_PRICE}    ${PRODUCT_AVAILABLE}
    Wait Until Page Contains    ${PRODUCT_NAME}
    Wait Until Page Contains    ${PRODUCT_BRAND}
    Wait Until Page Contains    ${PRODUCT_GENDER}
    Wait Until Page Contains    ${PRODUCT_AGE}
    Wait Until Page Contains    ${PRODUCT_PRICE}
    Wait Until Page Contains    ${PRODUCT_AVAILABLE}
    Mouse over    id:quantity
    Click Element    //*[@id="quantity"]/option[2]

กดสินค้าใส่ตะกร้า
    Click Button    id:btn_addcart

##fah
เช็คข้อมูลสินค้าและราคารวม
    [Arguments]   ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_AVAILABLE}    ${PRODUCT_PRICE}    ${PRODUCT_QUANTITY}     ${TOTAL_PRICE}   
    Wait Until Page Contains    ${PRODUCT_NAME}
    Wait Until Page Contains    ${PRODUCT_GENDER}
    Wait Until Page Contains   ${PRODUCT_GENDER}
    Wait Until Page Contains    ${PRODUCT_AGE}
    Wait Until Page Contains    ${PRODUCT_AVAILABLE}
    Wait Until Page Contains    ${PRODUCT_QUANTITY}
    Wait Until Page Contains    ${TOTAL_PRICE}
 
เลือกวิธีจัดส่งสินค้า
    Click Element    id:EMS

Checkout
    Click Button    id:btn_checkout

#Shipping
กรอกที่อยู่จัดส่ง
    [Arguments]    ${NAME}    ${ADDESS1}    ${ADDESS2}    ${CITY}    ${PROVINCE}    ${POSTCODE}
    Input Text    id:inputFullname    ${NAME}    
    Input Text    id:inputAddress    ${ADDESS1} 
    Input Text    id:inputAddress2     ${ADDESS2}  
    Input Text    id:inputCity    ${CITY} 
    Mouse over    id:province
    Click Element    //*[@id="province"]/option[34]  
    Input Text    id:post_code    ${POSTCODE}

ยืนยันที่อยู่
   Click Button    id:btn_deliver

#ขวัญ
เลือกวิธีการชำระเงิน
    Click Element    id:Line_pay
เช็ครายละเอียดของสินค้าที่สั่ง
    [Arguments]   ${PRODUCT_NAME}    ${PRODUCT_BRAND}    ${PRODUCT_GENDER}    ${PRODUCT_AGE}    ${PRODUCT_AVAILABLE}    ${PRODUCT_PRICE}    ${PRODUCT_QUANTITY}     ${TOTAL_PRICE}
   Wait Until Page Contains    ${PRODUCT_NAME}
   Wait Until Page Contains    ${PRODUCT_GENDER}
   Wait Until Page Contains   ${PRODUCT_GENDER}
   Wait Until Page Contains    ${PRODUCT_AGE}
   Wait Until Page Contains    ${PRODUCT_AVAILABLE}

กดยืนยันการสั่งซื้อ
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