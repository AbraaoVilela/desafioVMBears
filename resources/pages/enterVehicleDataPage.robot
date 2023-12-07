*** Settings ***
Documentation                     Acoes da pagina EnterVehicleData
Library                           Browser
Library    Collections
Resource                          ../../resources/Base.robot

*** Variables ***
### <-- LOCATORS FIELDS --> ###
${TITLE_HOMEPAGE}                 id=tricentis_logo
${SELECT_CAR_BRAND}               id=make
${SELECT_CAR_MODEL}               id=model
${FIELD_PERFORMANCEENGINE}        id=engineperformance
${FIELD_DATEMANUFACTURE}          xpath=//*[@id='dateofmanufacture']
${FIELD_CYLINDERCAPACITY}         id=cylindercapacity
${SELECT_NUMBEROFSEATS}           id=numberofseats
${BUTTONHANDDRIVE_YES}            id=righthanddriveyes
${BUTTONHANDDRIVE_NO}             id=righthanddriveno
${SELECT_FUELTYPE}                id=fuel
${PAYLOAD_KG}                     id=payload
${TOTALWEIGHT}                    xpath=(//label[text()='Total Weight [kg]']/following::input)[1]
${LISTPRICE}                      id=listprice
${LICENSEPLATENUMBER}             id=licenseplatenumber
${ANNUALMILEAGE}                  id=annualmileage
${BUTTON_NEXT}                    id=nextenterinsurantdata


### <-- INPUT VALUE FIELDS --> ###
${BMW_CAR}                        Audi
${VALUE_PERFORMANCEENGINE}        2000
${VALUE_DATEMANUFACTURE}          07/12/2023
${SCOOTER_MODEL}                  Scooter
${VALUE_CYLINDERCAPACITY}         231
${VALUE_NUMBEROFSEATS}            1
${VALUE_FUEL}                     Diesel
${VALUE_PAYLOAD}                  231
${VALUE_WEIGHT}                   1234
${VALUE_LiSTPRICE}                10000
${VALUE_LICENSENUMBER}            12345
${VALUE_ANNUALMILEAGE}            124


*** Keywords ***
Given that the user is logged into the home page
    Go To                         ${URL}
    Wait For Elements State       ${TITLE_HOMEPAGE} 

And the user wants select the make of the car
    Wait For Elements State       ${SELECT_CAR_BRAND}
    Click                         ${SELECT_CAR_BRAND}
    Select Options By             ${SELECT_CAR_BRAND}      ${BMW_CAR}

And the user wants select the model of the car
    Wait For Elements State       ${SELECT_CAR_MODEL}
    Click                         ${SELECT_CAR_MODEL}
    Select Options By             ${SELECT_CAR_MODEL}      ${SCOOTER_MODEL} 

And the user wants fill the cylinder capacity
    Wait For Elements State       ${FIELD_CYLINDERCAPACITY} 
    Click                         ${FIELD_CYLINDERCAPACITY}
    Fill Text                     ${FIELD_CYLINDERCAPACITY}
    ...                           ${VALUE_CYLINDERCAPACITY}
    
And the user wants fill the engine performance
    Wait For Elements State       ${FIELD_PERFORMANCEENGINE} 
    Click                         ${FIELD_PERFORMANCEENGINE}
    Fill Text                     ${FIELD_PERFORMANCEENGINE}
    ...                           ${VALUE_PERFORMANCEENGINE}
    
And the user wants fill the date of manufacture
    Wait For Elements State       ${FIELD_DATEMANUFACTURE} 
    Click                         ${FIELD_DATEMANUFACTURE}
    Fill Text                     ${FIELD_DATEMANUFACTURE}
    ...                           ${VALUE_DATEMANUFACTURE}
    
And the user wants select the number of seats
    Wait For Elements State       ${SELECT_NUMBEROFSEATS}
    Click                         ${SELECT_NUMBEROFSEATS}
    Select Options By             ${SELECT_NUMBEROFSEATS}    ${VALUE_NUMBEROFSEATS} 

And the user want click in YES for Right Hand Drive
    Wait For Elements State       ${BUTTONHANDDRIVE_YES}
    Click                         ${BUTTONHANDDRIVE_YES}

And the user want click in NO for Right Hand Drive
    Wait For Elements State       ${BUTTONHANDDRIVE_NO}
    Click                         ${BUTTONHANDDRIVE_NO}

And the user wants select the fuel type
    Wait For Elements State       ${SELECT_FUELTYPE} 
    Click                         ${SELECT_FUELTYPE} 
    Select Options By             ${SELECT_FUELTYPE}       ${VALUE_FUEL} 

And the user wants fill the payload (KG)
    Wait For Elements State       ${PAYLOAD_KG} 
    Click                         ${PAYLOAD_KG} 
    Fill Text                     ${PAYLOAD_KG} 
    ...                           ${VALUE_PAYLOAD}

And the user wants fill the Total Weight (KG)
    Wait For Elements State       ${TOTALWEIGHT} 
    Click                         ${TOTALWEIGHT} 
    Fill Text                     ${TOTALWEIGHT} 
    ...                           ${VALUE_WEIGHT}
    
And the user wants fill the list price
    Wait For Elements State       ${LISTPRICE} 
    Click                         ${LISTPRICE}
    Fill Text                     ${LISTPRICE}
    ...                           ${VALUE_LISTPRICE}
    
And the user wants fill the license Plate Number
    Wait For Elements State       ${LICENSEPLATENUMBER} 
    Click                         ${LICENSEPLATENUMBER}
    Fill Text                     ${LICENSEPLATENUMBER}
    ...                           ${VALUE_LICENSENUMBER}
    
And the user wants fill the Annual Mileage
    Wait For Elements State       ${ANNUALMILEAGE} 
    Click                         ${ANNUALMILEAGE}
    Fill Text                     ${ANNUALMILEAGE}
    ...                           ${VALUE_ANNUALMILEAGE}
    
Then click the button next for go to enter Insurant Data
    Wait For Elements State       ${BUTTON_NEXT} 
    Click                         ${BUTTON_NEXT} 
    