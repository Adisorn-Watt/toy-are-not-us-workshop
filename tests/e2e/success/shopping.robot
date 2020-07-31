*** Settings ***
Resource    ../keywords/keywords.robot
Library    SeleniumLibrary
Test Template    ซื้อของในร้านค้า
Test Teardown    ปิดเว็ป

*** Test Cases ***                                       PRODUCT_NAME        PRODUCT_GENDER      PRODUCT_AGE      PRODUCT_PRICE      PRODUCT_BRAND      PRODUCT_AVAILABLE         NAME         ADDESS1             ADDESS2             CITY       PROVINCE      POSTCODE    SHIPPING_METHOD      PRODUCT_QUANTITY        TOTAL_PRICE
นายไทจิ ยามาโตะ ซื้อ Earth DVD Game 1 อัน จ่ายด้วย LinePay     Earth DVD Game      Neutral             over 8           34.99              VideoVroom         In Stock                  ไทจิ ยามาโตะ   ถนนเลียบชายกว๊าน      อำเภอเมืองพะเยา       พะเยา       พะเยา          56000       linepay           1                       1102.19
