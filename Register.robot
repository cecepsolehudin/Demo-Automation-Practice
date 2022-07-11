*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}            firefox
${url}                http://automationpractice.com/index.php

*** Test Cases ***
Homepage
    Open Browser                    ${url}                       ${browser}
    Maximize Browser Window
    Element Should Be Visible       //div[@id="header_logo"]
    Element Should Be Visible       //a[@class="login"]
    Click Element                   //a[@class="login"]    
    Sleep                           3s    

Submit Register
    Element Should Be Visible       //div[@id="header_logo"] 
    Input Text                      //input[@id="email_create"]           jksaloii@gmail.com  
    Element Should Be Visible       //*[@id="create-account_form"]
    Click Button                    //*[@id="SubmitCreate"]       
    Sleep                           3s    

Create An Account
    Select Radio Button             id_gender                              1   
    Input Text                      //input[@id="customer_firstname"]      Cecep
    Input Text                      //input[@id="customer_lastname"]       Solehudin
    Input Text                      //input[@id="passwd"]                  12345678
    Page Should Contain List        //select[@id="days"] 
    Select From List By Value       //select[@id="days"]                   20
    Page Should Contain List        //select[@id="months"]
    Select From List By Value       //select[@id="months"]                 2
    Page Should Contain List        //select[@id="years"]
    Select From List By Value       //select[@id="years"]                  2000
    Select Checkbox                 //input[@id="newsletter"] 
    Select Checkbox                 //input[@id="optin"]               
    Sleep                           3s 

Address
    Input Text                      //input[@id="company"]                 PT. Untung Rugi
    Input Text                      //input[@id="address1"]                Jl. Pembangunan
    Input Text                      //input[@id="address2"]                No. 17
    Input Text                      //input[@id="city"]                    New York
    Page Should Contain List        //select[@id="id_state"]
    Select From List By Value       //select[@id="id_state"]               32
    Input Text                      //input[@id="postcode"]                40379    
    Input Text                      //input[@id="phone_mobile"]            082123456789
    Input Password                  //input[@id="alias"]                   Washington
    Click Button                    //button[@id="submitAccount"]
    Element Should Be Visible       //div[@id="center_column"]
    Sleep                           3s
    Close Browser