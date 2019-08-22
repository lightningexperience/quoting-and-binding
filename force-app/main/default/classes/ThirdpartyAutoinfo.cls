/**
 * @File Name          : ThirdpartyAutoinfo.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 8/22/2019, 10:16:59 AM
 * @Modification Log   : 
 *==============================================================================
 * Ver         Date                     Author      		      Modification
 *==============================================================================
 * 1.0    8/21/2019, 3:51:03 PM   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public  class ThirdpartyAutoinfo {
  
   
            @AuraEnabled @InvocableVariable  public String makeName;
            @AuraEnabled @InvocableVariable  public  string  modelName;
            @AuraEnabled @InvocableVariable  public  String modelYear;
            @AuraEnabled @InvocableVariable  public  String basePrice;
            //This method is used as part of the Create Apex Action section.
            //public static ThirdpartyAutoinfo parse(String json) {
            //return (ThirdpartyAutoinfo) System.JSON.deserialize(json, ThirdpartyAutoinfo.class);
            //}
                
}
