/** Class Name   : POC_RegionTreeController 
*  Description  : This class is used make google api callouts and get the response 
*  Created By   : Veera k  
*  Created On   : 31/10/2017
*
*  Modification Log:  
*  --------------------------------------------------------------------------------------------------------------------------------------
*   Developer                Date                   Modification ID      Description 
*  --------------------------------------------------------------------------------------------------------------------------------------                                                                                   
*  
**/

global class POC_RegionTreeController{
    
  
    
    /**
* @description : Auto suggestion Web Service 
* @param : input: SearchAddress , types: Results Types , langug : language for getting the results
* @return : string
**/  
    @AuraEnabled
    global static string getAddressAutoComplete(String input, String types,String langug) {
        String url = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input='
            + EncodingUtil.urlEncode(input, 'UTF-8')
            + '&language=' + langug
            + '&key=' + POC_RegionTreeController.getGoogleMapsAPIKey();
        return POC_RegionTreeController.getHttp(url);
    }
    /**
* @description : Place Details Web Service 
* @param : PlaceId: Unique Place Id , langug : language for getting the results
* @return : string
**/ 
    @AuraEnabled
    global static string getAddressDetails(String PlaceId,String lang) {
        String url = 'https://maps.googleapis.com/maps/api/place/details/json?placeid='
            +PlaceId+'&language='+lang+'&fields=address_component,formatted_address&key='+ POC_RegionTreeController.getGoogleMapsAPIKey();
        return POC_RegionTreeController.getHttp(url);
    }
    
    /**
* @description : To get the google Api key from custom label
* @param : 
* @return : string
**/
    global static String getGoogleMapsAPIKey(){
        
        String GMapkey= Label.TXP_Google_Key;
        return GMapkey;
    }
    /**
* @description : Common Utility method for making call out
* @param : String
* @return : string
**/
    
    global static string getHttp(String url){
        try{
            
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint(url);
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            return response.getBody();
            
        }catch(Exception e){    
            return 'sample string';
        }
    } 
  
  
   
    /**
* @description : Parsing Json Response for Auto Suggestion (1st Web Service)
* @param : String
* @return : List<AddressJsonInfo>
**/
    
    public static List<AddressJsonInfo> parse(String json) {
        return (List<AddressJsonInfo>) System.JSON.deserialize(json, List<AddressJsonInfo>.class);
    }
    
    /**
* @description : Parsing Json Response for Place Details (3rd and 4th Web Service)
* @param : String
* @return : TXP_JSON2Apex
**/
    
    public static TXP_JSON2Apex parse2(String json) {
        return (TXP_JSON2Apex) System.JSON.deserialize(json, TXP_JSON2Apex.class);
    }
    
    
    /**
* @description : Parsing Json Response for Place Details (2nd Web Service)
* @param : String
* @return : GeoLoca 
**/
    
    global static GeoLoca parse1(String json) {
        return (GeoLoca) System.JSON.deserialize(json, GeoLoca.class);
    }
    
    /**
* @description : Wrapper class for getting latitude and longtitude (Second Web Service)
* @param : 
* @return : 
**/
    
    global class GeoLoca{
        global Double lat;  //6.9121796
        global Double lng;  //79.8828828
    }
    
    /**
* @description : Wrapper class for getting Address (First Web Service)
* @param : 
* @return : 
**/
    global class AddressJsonInfo {
        global String long_name;
        global String short_name;
        global List<String> types;
    }
    /**
* @description : Wrapper class for getting latitude and longtitude (Second Web Service)
* @param : 
* @return : 
**/
    
    
    public class Geometry {
        public Location location;
        public Viewport viewport;
    }
    
    public class Viewport {
        public Location northeast;
        public Location southwest;
    }
    
    public class Location {
        public Double lat;
        public Double lng;
    }
    
    
    /**
* @description : Wrapper class for Place Details  (Third and fourth Web Service)
* @param : 
* @return : 
**/
    
    public class TXP_JSON2Apex {
        public List<Html_attributions> html_attributions;
        public Result result;
        public String status;
    }
    public class Html_attributions {
    }
    
    
    public class Result {
        public List<Address_components> address_components;
        public String adr_address;
        public String formatted_address;
        public Geometry geometry;
        public String icon;
        public String id;
        public String name;
        public String place_id;
        public String reference;
        public String scope;
        public List<String> types;
        public String url;
        public Integer utc_offset;
        public String vicinity;
    }
    public class Address_components {
        public String long_name;
        public String short_name;
        public List<String> types;
    }
    
    
    
}