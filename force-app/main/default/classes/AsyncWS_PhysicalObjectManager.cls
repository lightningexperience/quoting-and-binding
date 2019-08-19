//Generated by wsdl2apex

public class AsyncWS_PhysicalObjectManager {
    public class RetrieveVehicleCharacteristicsResponseFuture extends System.WebServiceCalloutFuture {
        public WS_PhysicalObjectManager.RetrieveVehicleCharacteristicsResponse getValue() {
            WS_PhysicalObjectManager.RetrieveVehicleCharacteristicsResponse response = (WS_PhysicalObjectManager.RetrieveVehicleCharacteristicsResponse)System.WebServiceCallout.endInvoke(this);
            return response;
        }
    }
    public class AsyncPhysicalObjectManager_v3_0_SOAPoHTTPEndpoint {
        public String endpoint_x = 'http://localhost:9090/services/physicalobject/PhysicalObjectManager-v3';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://schemas.zurich.com/zsoa/corporate/common/2009/11/basictypes', 'WS_PhysicalObjectManager_Common', 'http://www.w3.org/2005/08/addressing', 'WS_PhysicalObjectManager_Addressing', 'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa', 'WS_PhysicalObjectManager_POSchema', 'http://schemas.zurich.com/zsoa/corporate/common/2009/11/fault', 'WS_PhysicalObjectManager_Fault', 'http://webservices.zurich.com/zsoa/fig/physicalobject/physicalobjectmanager-v3', 'WS_PhysicalObjectManager', 'http://webservices.zurich.com/zsoa/fig/physicalobject/physicalobjectmanager-v3_0', 'WS_PhysicalObjectManager', 'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common', 'WS_PhysicalObjectManager_POSchema'};
        public AsyncWS_PhysicalObjectManager.RetrieveVehicleCharacteristicsResponseFuture beginRetrieveVehicleCharacteristics(System.Continuation continuation,WS_PhysicalObjectManager_POSchema.RequestHeader requestHeader,String effectiveDate,String ratingCompanyCode,WS_PhysicalObjectManager_POSchema.VehicleIdentifierView vehicleIdentifiers) {
            WS_PhysicalObjectManager.RetrieveVehicleCharacteristics request_x = new WS_PhysicalObjectManager.RetrieveVehicleCharacteristics();
            request_x.requestHeader = requestHeader;
            request_x.effectiveDate = effectiveDate;
            request_x.ratingCompanyCode = ratingCompanyCode;
            request_x.vehicleIdentifiers = vehicleIdentifiers;
            return (AsyncWS_PhysicalObjectManager.RetrieveVehicleCharacteristicsResponseFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncWS_PhysicalObjectManager.RetrieveVehicleCharacteristicsResponseFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://webservices.zurich.com/zsoa/fig/physicalobject/physicalobjectmanager-v3_0',
              'retrieveVehicleCharacteristics',
              'http://webservices.zurich.com/zsoa/fig/physicalobject/physicalobjectmanager-v3_0',
              'retrieveVehicleCharacteristicsResponse',
              'WS_PhysicalObjectManager.RetrieveVehicleCharacteristicsResponse'}
            );
        }
    }
}