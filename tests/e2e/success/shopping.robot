*** Settings ***
Resource    ../keywords/keywords.robot
Library    SeleniumLibrary
Test Template    ซื้อของในร้านค้า

*** Test Cases ***                                       Product_ID       PRODUCT_NAME        PRODUCT_GENDER      PRODUCT_AGE      PRODUCT_PRICE      PRODUCT_BRAND      PRODUCT_AVAILABLE         NAME         AGE      GENDER       ADDESS1             ADDESS2             CITY       PROVINCE      POSTCODE    SHIPPING_METHOD
นายไทจิ ยามาโตะ ซื้อ Earth DVD Game 1 อัน จ่ายด้วย LinePay     11               Earth DVD Game      Neutral             over 8           34.99              VideoVroom         Instock                  ไทจิ ยามาโตะ   22       ชาย         ถนนเลียบชายกว๊าน      อำเภอเมืองพะเยา       พะเยา       พะเยา          56000       linepay
