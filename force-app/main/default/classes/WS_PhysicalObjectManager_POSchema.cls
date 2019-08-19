//Generated by wsdl2apex

public class WS_PhysicalObjectManager_POSchema {
    public class ResponseHeader {
        public String messageReference;
        public String code;
        public String context;
        public String description;
        public String externalReference;
        private String[] messageReference_type_info = new String[]{'messageReference','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] code_type_info = new String[]{'code','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] context_type_info = new String[]{'context','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] description_type_info = new String[]{'description','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] externalReference_type_info = new String[]{'externalReference','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa','true','false'};
        private String[] field_order_type_info = new String[]{'messageReference','code','context','description','externalReference'};
    }
    public class ErrorInfo {
        public String errorMessageType;
        public String errorCode;
        public String errorMessageText;
        public String errorState;
        private String[] errorMessageType_type_info = new String[]{'errorMessageType','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] errorCode_type_info = new String[]{'errorCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] errorMessageText_type_info = new String[]{'errorMessageText','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] errorState_type_info = new String[]{'errorState','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa','true','false'};
        private String[] field_order_type_info = new String[]{'errorMessageType','errorCode','errorMessageText','errorState'};
    }
    public class Amount {
        public Decimal theAmount;
        public String theUnit;
        private String[] theAmount_type_info = new String[]{'theAmount','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] theUnit_type_info = new String[]{'theUnit','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa','true','false'};
        private String[] field_order_type_info = new String[]{'theAmount','theUnit'};
    }
    public class RequestHeader {
        public String userId;
        public DateTime systemDateTime;
        public String systemName;
        public String applicationType;
        public String messageReference;
        public String functionName;
        public String legalEntity;
        public String userLanguage;
        public DateTime transactionStartDateTime;
        private String[] userId_type_info = new String[]{'userId','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] systemDateTime_type_info = new String[]{'systemDateTime','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] systemName_type_info = new String[]{'systemName','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] applicationType_type_info = new String[]{'applicationType','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] messageReference_type_info = new String[]{'messageReference','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] functionName_type_info = new String[]{'functionName','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] legalEntity_type_info = new String[]{'legalEntity','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] userLanguage_type_info = new String[]{'userLanguage','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] transactionStartDateTime_type_info = new String[]{'transactionStartDateTime','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa','true','false'};
        private String[] field_order_type_info = new String[]{'userId','systemDateTime','systemName','applicationType','messageReference','functionName','legalEntity','userLanguage','transactionStartDateTime'};
    }
    public class AlternateId {
        public String value;
        public String sourceLogicalId;
        public String attributeString;
        public String state;
        public String newValue;
        private String[] value_type_info = new String[]{'value','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] sourceLogicalId_type_info = new String[]{'sourceLogicalId','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] attributeString_type_info = new String[]{'attributeString','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] state_type_info = new String[]{'state','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] newValue_type_info = new String[]{'newValue','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa','true','false'};
        private String[] field_order_type_info = new String[]{'value','sourceLogicalId','attributeString','state','newValue'};
    }
    public class Binary {
        public String theContentType;
        public String theBinData;
        public Integer theBinLength;
        private String[] theContentType_type_info = new String[]{'theContentType','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] theBinData_type_info = new String[]{'theBinData','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] theBinLength_type_info = new String[]{'theBinLength','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa','true','false'};
        private String[] field_order_type_info = new String[]{'theContentType','theBinData','theBinLength'};
    }
    public class UUID {
        public String id;
        private String[] id_type_info = new String[]{'id','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa','true','false'};
        private String[] field_order_type_info = new String[]{'id'};
    }
    public class CurrencyAmount {
        public Decimal theCurrencyAmount;
        public String theCurrencyCode;
        private String[] theCurrencyAmount_type_info = new String[]{'theCurrencyAmount','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] theCurrencyCode_type_info = new String[]{'theCurrencyCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/zsoa','true','false'};
        private String[] field_order_type_info = new String[]{'theCurrencyAmount','theCurrencyCode'};
    }
    public class TransactionNotification {
        public String legalEntity;
        public String respTimeZone;
        public String transactionCode;
        public Date transactionDate;
        public String transactionId;
        public String transactionStatus;
        public String transactionType;
        public String uniqueIdentifier;
        public String uniqueTransactionName;
        public WS_PhysicalObjectManager_POSchema.Remark[] remark;
        private String[] legalEntity_type_info = new String[]{'legalEntity','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] respTimeZone_type_info = new String[]{'respTimeZone','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] transactionCode_type_info = new String[]{'transactionCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] transactionDate_type_info = new String[]{'transactionDate','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] transactionStatus_type_info = new String[]{'transactionStatus','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] transactionType_type_info = new String[]{'transactionType','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] uniqueIdentifier_type_info = new String[]{'uniqueIdentifier','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] uniqueTransactionName_type_info = new String[]{'uniqueTransactionName','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] remark_type_info = new String[]{'remark','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'legalEntity','respTimeZone','transactionCode','transactionDate','transactionId','transactionStatus','transactionType','uniqueIdentifier','uniqueTransactionName','remark'};
    }
    public class FameReference {
        public String customerId;
        private String[] customerId_type_info = new String[]{'customerId','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'customerId'};
    }
    public class LegacyReference {
        public String referenceNumber;
        private String[] referenceNumber_type_info = new String[]{'referenceNumber','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'referenceNumber'};
    }
    public class VehicleCharacteristicsView {
        public String antiLockBrakingSystemCode;
        public String applicationReturnCode;
        public String basePrice;
        public String blockedVINIndicator;
        public String bodyStyleCode;
        public String curbWeight;
        public String dayTimeRunningLightsIndicator;
        public String driveTrainCode;
        public String electronicStabilityValidationCode;
        public String highPerformanceIndicator;
        public String hLDIAlarmCode;
        public String hLDIImmoblzrCode;
        public String hLDIReturnIndicator;
        public String makeCode;
        public String makeName;
        public String makeNumber;
        public String maxHorsePower;
        public String minHorsePower;
        public String modelCode;
        public String modelName;
        public String modelNumber;
        public String modelYear;
        public String noHitIndicator;
        public String passiveRestraintCode;
        public String seriesNumber;
        public String sportsCarIndicator;
        public String styleName;
        public String trimName;
        public String truckGrossVehicleWeightCode;
        public String vehicleClassCode;
        public String vehicleFuelCode;
        public String vehicleHeight;
        public WS_PhysicalObjectManager_POSchema.VehicleImagesView vehicleImages;
        public String vehicleLength;
        public String vehicleSizeCode;
        public String vehicleTypeCode;
        public String vehicleWidth;
        public String vin;
        public String wheelBase;
        private String[] antiLockBrakingSystemCode_type_info = new String[]{'antiLockBrakingSystemCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] applicationReturnCode_type_info = new String[]{'applicationReturnCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] basePrice_type_info = new String[]{'basePrice','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] blockedVINIndicator_type_info = new String[]{'blockedVINIndicator','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] bodyStyleCode_type_info = new String[]{'bodyStyleCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] curbWeight_type_info = new String[]{'curbWeight','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] dayTimeRunningLightsIndicator_type_info = new String[]{'dayTimeRunningLightsIndicator','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] driveTrainCode_type_info = new String[]{'driveTrainCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] electronicStabilityValidationCode_type_info = new String[]{'electronicStabilityValidationCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] highPerformanceIndicator_type_info = new String[]{'highPerformanceIndicator','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] hLDIAlarmCode_type_info = new String[]{'hLDIAlarmCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] hLDIImmoblzrCode_type_info = new String[]{'hLDIImmoblzrCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] hLDIReturnIndicator_type_info = new String[]{'hLDIReturnIndicator','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] makeCode_type_info = new String[]{'makeCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] makeName_type_info = new String[]{'makeName','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] makeNumber_type_info = new String[]{'makeNumber','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] maxHorsePower_type_info = new String[]{'maxHorsePower','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] minHorsePower_type_info = new String[]{'minHorsePower','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] modelCode_type_info = new String[]{'modelCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] modelName_type_info = new String[]{'modelName','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] modelNumber_type_info = new String[]{'modelNumber','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] modelYear_type_info = new String[]{'modelYear','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] noHitIndicator_type_info = new String[]{'noHitIndicator','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] passiveRestraintCode_type_info = new String[]{'passiveRestraintCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] seriesNumber_type_info = new String[]{'seriesNumber','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] sportsCarIndicator_type_info = new String[]{'sportsCarIndicator','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] styleName_type_info = new String[]{'styleName','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] trimName_type_info = new String[]{'trimName','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] truckGrossVehicleWeightCode_type_info = new String[]{'truckGrossVehicleWeightCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] vehicleClassCode_type_info = new String[]{'vehicleClassCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] vehicleFuelCode_type_info = new String[]{'vehicleFuelCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] vehicleHeight_type_info = new String[]{'vehicleHeight','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] vehicleImages_type_info = new String[]{'vehicleImages','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] vehicleLength_type_info = new String[]{'vehicleLength','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] vehicleSizeCode_type_info = new String[]{'vehicleSizeCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] vehicleTypeCode_type_info = new String[]{'vehicleTypeCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] vehicleWidth_type_info = new String[]{'vehicleWidth','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] vin_type_info = new String[]{'vin','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] wheelBase_type_info = new String[]{'wheelBase','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'antiLockBrakingSystemCode','applicationReturnCode','basePrice','blockedVINIndicator','bodyStyleCode','curbWeight','dayTimeRunningLightsIndicator','driveTrainCode','electronicStabilityValidationCode','highPerformanceIndicator','hLDIAlarmCode','hLDIImmoblzrCode','hLDIReturnIndicator','makeCode','makeName','makeNumber','maxHorsePower','minHorsePower','modelCode','modelName','modelNumber','modelYear','noHitIndicator','passiveRestraintCode','seriesNumber','sportsCarIndicator','styleName','trimName','truckGrossVehicleWeightCode','vehicleClassCode','vehicleFuelCode','vehicleHeight','vehicleImages','vehicleLength','vehicleSizeCode','vehicleTypeCode','vehicleWidth','vin','wheelBase'};
    }
    public class ObjectReference {
        public String entityId;
        public String idRef;
        public String sourceSystemId;
        private String[] entityId_type_info = new String[]{'entityId','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] idRef_type_info = new String[]{'idRef','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] sourceSystemId_type_info = new String[]{'sourceSystemId','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'entityId','idRef','sourceSystemId'};
    }
    public class VehicleImagesView {
        public WS_PhysicalObjectManager_POSchema.VehicleImageView[] vehicleImage;
        private String[] vehicleImage_type_info = new String[]{'vehicleImage','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'vehicleImage'};
    }
    public class VehicleImageView {
        public String fileName;
        public String url;
        private String[] fileName_type_info = new String[]{'fileName','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] url_type_info = new String[]{'url','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'fileName','url'};
    }
    public class Genzreference {
        public String agencyCode;
        public String branchcode;
        public String companyCode;
        private String[] agencyCode_type_info = new String[]{'agencyCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] branchcode_type_info = new String[]{'branchcode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] companyCode_type_info = new String[]{'companyCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'agencyCode','branchcode','companyCode'};
    }
    public class ClaimBusinessReference {
        public String partitionNumber;
        public String productionOrTrainingCode;
        private String[] partitionNumber_type_info = new String[]{'partitionNumber','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] productionOrTrainingCode_type_info = new String[]{'productionOrTrainingCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'partitionNumber','productionOrTrainingCode'};
    }
    public class MessageDetails {
        public String lineOfBusiness;
        public String messageRecordCount;
        public String messageSource;
        private String[] lineOfBusiness_type_info = new String[]{'lineOfBusiness','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] messageRecordCount_type_info = new String[]{'messageRecordCount','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] messageSource_type_info = new String[]{'messageSource','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'lineOfBusiness','messageRecordCount','messageSource'};
    }
    public class VehicleIdentifierView {
        public String[] vin;
        private String[] vin_type_info = new String[]{'vin','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'vin'};
    }
    public class Remark {
        public String messageCode;
        public DateTime messageDate;
        public String messageNumber;
        public String messageReferenceID;
        public String messageReferenceName;
        public String messageStatus;
        public String messageText;
        public String messageType;
        private String[] messageCode_type_info = new String[]{'messageCode','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] messageDate_type_info = new String[]{'messageDate','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] messageNumber_type_info = new String[]{'messageNumber','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] messageReferenceID_type_info = new String[]{'messageReferenceID','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] messageReferenceName_type_info = new String[]{'messageReferenceName','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] messageStatus_type_info = new String[]{'messageStatus','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] messageText_type_info = new String[]{'messageText','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] messageType_type_info = new String[]{'messageType','http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://schemas.zurich.com/zsoa/fig/physicalobject/2018/05/common','true','false'};
        private String[] field_order_type_info = new String[]{'messageCode','messageDate','messageNumber','messageReferenceID','messageReferenceName','messageStatus','messageText','messageType'};
    }
}