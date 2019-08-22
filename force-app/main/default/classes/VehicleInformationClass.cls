/**
 * @File Name          : VehicleInformationClass.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 8/22/2019, 10:17:51 AM
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    8/21/2019, 12:39:24 PM   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
global with sharing class VehicleInformationClass {
    public VehicleInformationClass() {

    }
  

  @InvocableMethod(label='Get Information Based on Vin Number')
   
    public static list<Results> GetVehicleInformation(list<string> Vinnumber) {
        //RetrieveVehicleCharacteristics Request
        WS_PhysicalObjectManager.PhysicalObjectManager_v3_0_SOAPoHTTPEndpoint ws = new WS_PhysicalObjectManager.PhysicalObjectManager_v3_0_SOAPoHTTPEndpoint();
        WS_PhysicalObjectManager_POSchema.RequestHeader requestHeader;
        String effectiveDate = '11-01-1991';
        String ratingCompanyCode = 'K';
        WS_PhysicalObjectManager_POSchema.VehicleIdentifierView vehicleIdentifiers = new WS_PhysicalObjectManager_POSchema.VehicleIdentifierView();
        vehicleIdentifiers.vin = new List<String>();
        //vehicleIdentifiers.vin.add('1J4GK48K34W132107');
        vehicleIdentifiers.vin.add(Vinnumber[0]);
        WS_PhysicalObjectManager.RetrieveVehicleCharacteristicsResponse resp = ws.retrieveVehicleCharacteristics(requestHeader, effectiveDate, ratingCompanyCode, vehicleIdentifiers);
      

        Results curResult = new Results();
            String responseJSON = JSON.serializePretty(resp);
           
            //ThirdpartyAutoinfo curAuto = ThirdpartyAutoinfo.parse(responseJSON);     
             ThirdpartyAutoinfo curAuto = new ThirdpartyAutoinfo();
             
             JSONParser parser = JSON.createParser(JSON.serializePretty(resp));
              while (parser.nextToken() != null) {
                    if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                        (parser.getText() == 'modelName')) {
            
                        parser.nextToken();

                        
                        curAuto.modelName  = parser.getText();
                        System.debug('++++'+ curAuto.modelName);
                    
                    }
                    if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                        (parser.getText() == 'makeName')) {
            
                        parser.nextToken();

                        
                        curAuto.makeName  = parser.getText();
                        System.debug('++++'+ curAuto.makeName);
                    
                    }
                    if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                        (parser.getText() == 'modelYear')) {
            
                        parser.nextToken();

                        
                        curAuto.modelYear  = parser.getText();
                        System.debug('++++'+ curAuto.modelYear);
                    
                    }
                    if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) && 
                        (parser.getText() == 'basePrice')) {
            
                        parser.nextToken();

                        
                        curAuto.basePrice  = parser.getText();
                        System.debug('++++'+ curAuto.basePrice);
                    
                    }

                    
        }    
            curResult.Auto = curAuto;
           
            List<Results> resultsList = new List<Results>();
            resultsList.add(curResult);
            return resultsList;
    }
    
    global class Results {
        @InvocableVariable
        global ThirdpartyAutoinfo  Auto;
    }

   
}

 