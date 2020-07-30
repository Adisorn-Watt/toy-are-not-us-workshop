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