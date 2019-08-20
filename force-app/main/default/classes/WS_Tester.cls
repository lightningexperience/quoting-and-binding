public with sharing class WS_Tester {
    public WS_Tester() {

    }

    @RemoteAction
    public static String getLastRequest() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://cryptic-mesa-10368.herokuapp.com/LastRequest');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        return response.getBody();
    }

    @RemoteAction  
    public static String testAutoRiskAnalysis() {
        //PriorCarrierService Request
        WS_AutoRiskAnalysis.AutoRiskAnalysis_v2_0_SOAPoHTTPEndpoint ws = new WS_AutoRiskAnalysis.AutoRiskAnalysis_v2_0_SOAPoHTTPEndpoint();
        WS_AutoRiskAnalysis_Underwriting.RequestHeader requestHeader = new WS_AutoRiskAnalysis_Underwriting.RequestHeader();
        requestHeader.messageReference = '613708264-7b77825b-396d-4640-a800-bbac8cc3ff6e';
        requestHeader.systemName = 'GWPC';
        requestHeader.systemDateTime = DateTime.now();
        requestHeader.transactionStartDateTime = DateTime.now();
        requestHeader.userId = 'A05234N00';
        //agentReference, loggedOnUserId, and locationId are not in WSDL but are present in sample XML
        String agentReference = 'AGENT001';
        String businessEntityId = '30';
        Boolean checkForPriorErrorRecord = false;
        Boolean customerOptInIndicator = true;
        WS_AutoRiskAnalysis_Underwriting.BasicDriverSummaryView[] driver = new List<WS_AutoRiskAnalysis_Underwriting.BasicDriverSummaryView>();
        WS_AutoRiskAnalysis_Underwriting.BasicDriverSummaryView driver1 = new WS_AutoRiskAnalysis_Underwriting.BasicDriverSummaryView();
        driver1.externalReference = 'PC201';
        driver1.licenseNumber = 'S623420660521';
        driver1.licenseState = 'FL';
        driver1.person = new WS_AutoRiskAnalysis_Underwriting.BasicPersonSummary();
        driver1.person.birthDateAsString = '04/12/1964';
        driver1.person.genderDesc = 'Male';
        driver1.person.taxRegistrationId = '666456630';
        driver1.person.person = new WS_AutoRiskAnalysis_Underwriting.Person();
        driver1.person.person.externalReference = 'PC201';
        driver1.person.personName = new WS_AutoRiskAnalysis_Underwriting.PersonName();
        driver1.person.personName.firstName = 'ELLIOT';
        driver1.person.personName.lastName = 'SMITH';
        driver1.person.personName.middleName = 'F';
        driver1.person.basicPostalAddress = new List<WS_AutoRiskAnalysis_Underwriting.BasicPostalAddressView>();
        WS_AutoRiskAnalysis_Underwriting.BasicPostalAddressView driver1Address = new WS_AutoRiskAnalysis_Underwriting.BasicPostalAddressView();
        driver1Address.postalAddress = new WS_AutoRiskAnalysis_Underwriting.PostalAddress();
        driver1Address.postalAddress.externalReference = 'PCA201';
        driver1Address.postalAddress.typeName = 'residence';
        driver1Address.postalAddress.city = 'ARCADIA';
        driver1Address.postalAddress.houseNumber = '2662';
        driver1Address.postalAddress.postalCode = '34266';
        driver1Address.postalAddress.postalCodeExtension = '8229';
        driver1Address.postalAddress.region = 'FL';
        driver1Address.postalAddress.postalAddressDetail = new WS_AutoRiskAnalysis_Underwriting.PostalAddressStreetDetail();
        driver1Address.postalAddress.postalAddressDetail.addressLine1 = '2662 NW PINE CREEK AVE';
        driver1.person.basicPostalAddress.add(driver1Address);
        driver.add(driver1);
        WS_AutoRiskAnalysis_Underwriting.BasicDriverSummaryView[] driverHistory;
        String eCMSAccountNumber;
        String forceToDMV;
        String lineOfBusiness = 'Auto';
        Integer maxNumberofAccidentRequested;
        Integer maxNumberofViolationRequested;
        String numberOfStaleDays = '100';
        String quoteTransactionType;
        String targetApplicationVersion;
        String transactionName;
        String underwriterCompany = 'LNCP001';
        WS_AutoRiskAnalysis_Underwriting.BasicVehicleSummary[] vehicle;
        WS_AutoRiskAnalysis.RetrieveRiskReportsResponse resp = ws.retrieveRiskReports(requestHeader, agentReference, businessEntityId, checkForPriorErrorRecord, customerOptInIndicator, driver, driverHistory, eCMSAccountNumber, forceToDMV, lineOfBusiness, maxNumberofAccidentRequested, maxNumberofViolationRequested, numberOfStaleDays, quoteTransactionType, targetApplicationVersion, transactionName, underwriterCompany, vehicle);
        return (JSON.serializePretty(resp));
    }

    @RemoteAction  
    public static String testPropertyRiskAnalysis() {
        //EvaluatePropertyValue Request
        WS_PropertyRiskAnalysis.PropertyRiskAnalysis_v4_0_SOAPoHTTPEndpoint ws = new WS_PropertyRiskAnalysis.PropertyRiskAnalysis_v4_0_SOAPoHTTPEndpoint();
        WS_PropertyRiskAnalysis_Underwriting.RequestHeader requestHeader = new WS_PropertyRiskAnalysis_Underwriting.RequestHeader();
        requestHeader.messageReference = '613708264-7b77825b-396d-4640-a800-bbac8cc3ff6e';
        requestHeader.systemName = 'GWPC';
        requestHeader.systemDateTime = DateTime.newInstanceGmt(2019,4,11,10,00,43).addHours(7);
        requestHeader.transactionStartDateTime = DateTime.newInstanceGmt(2019,4,15,10,00,43).addHours(7);
        //agentReference, loggedOnUserId, and locationId are not in WSDL but are present in sample XML
        WS_PropertyRiskAnalysis_Underwriting.FinancialValuationTypeView[] assessmentBreakdown;
        WS_PropertyRiskAnalysis_Underwriting.FinancialValuation assessmentResult;
        WS_PropertyRiskAnalysis_Underwriting.FullDwellingObjectView fullDwelling = new WS_PropertyRiskAnalysis_Underwriting.FullDwellingObjectView();
        fullDwelling.constructionMaterial = new WS_PropertyRiskAnalysis_Underwriting.ExteriorWallElementView();
        fullDwelling.dwelling = new  WS_PropertyRiskAnalysis_Underwriting.DwellingObjectView();
        fullDwelling.exteriorWallElement = new WS_PropertyRiskAnalysis_Underwriting.ExteriorWallElementView();
        fullDwelling.floorElement = new WS_PropertyRiskAnalysis_Underwriting.FloorElementView();
        fullDwelling.foundationElement = new WS_PropertyRiskAnalysis_Underwriting.FoundationElementView();
        fullDwelling.requestType = '';
        fullDwelling.roofElement = new WS_PropertyRiskAnalysis_Underwriting.RoofElementView();
        WS_PropertyRiskAnalysis_Underwriting.BasicPolicyView insurancePolicy = new WS_PropertyRiskAnalysis_Underwriting.BasicPolicyView();
        insurancePolicy.alternativeReference = '613708264';
        WS_PropertyRiskAnalysis_Underwriting.PersonName insured = new WS_PropertyRiskAnalysis_Underwriting.PersonName();
        insured.fullName='AutmAprBCAJFIBJ AccntAprBCAJFICA';
        WS_PropertyRiskAnalysis_Underwriting.PostalAddress propertyAddress = new WS_PropertyRiskAnalysis_Underwriting.PostalAddress();
        propertyAddress.city = 'Phoenix';
        propertyAddress.postalCode = '85040';
        propertyAddress.region = 'AZ';
        propertyAddress.postalAddressDetail = new WS_PropertyRiskAnalysis_Underwriting.PostalAddressStreetDetail();
        propertyAddress.postalAddressDetail.addressLine1 = '4180 E Sunland Ave';
        String userId = '880250fig';
        WS_PropertyRiskAnalysis.EvaluatePropertyValueResponse resp = ws.evaluatePropertyValue(requestHeader, assessmentBreakdown, assessmentResult, fullDwelling, insurancePolicy, insured, propertyAddress, userId);
        return (JSON.serializePretty(resp));
    }

    @RemoteAction  
    public static String testPhysicalObjectManager() {
        //RetrieveVehicleCharacteristics Request

        WS_PhysicalObjectManager.PhysicalObjectManager_v3_0_SOAPoHTTPEndpoint ws = new WS_PhysicalObjectManager.PhysicalObjectManager_v3_0_SOAPoHTTPEndpoint();
        WS_PhysicalObjectManager_POSchema.RequestHeader requestHeader;
        String effectiveDate = '11-01-1991';
        String ratingCompanyCode = 'K';
        WS_PhysicalObjectManager_POSchema.VehicleIdentifierView vehicleIdentifiers = new WS_PhysicalObjectManager_POSchema.VehicleIdentifierView();
        vehicleIdentifiers.vin = new List<String>();
        vehicleIdentifiers.vin.add('1J4GK48K34W132107');
        WS_PhysicalObjectManager.RetrieveVehicleCharacteristicsResponse resp = ws.retrieveVehicleCharacteristics(requestHeader, effectiveDate, ratingCompanyCode, vehicleIdentifiers);
        return (JSON.serializePretty(resp));
    }


    @RemoteAction  
    public static String testRiskAnalysis() {
        WS_RiskAnalysis.RiskAnalysis_v2_0_SOAPoHTTPEndpoint ws = new WS_RiskAnalysis.RiskAnalysis_v2_0_SOAPoHTTPEndpoint();
        WS_RiskAnalysis_Underwriting.RequestHeader requestHeader = new WS_RiskAnalysis_Underwriting.RequestHeader();
        requestHeader.messageReference = '400600834-d40c488a-6b2c-45f5-9667-a75847752ef2';
        requestHeader.systemName = 'GWPC';
        requestHeader.systemDateTime = DateTime.newInstanceGmt(2019,4,11,15,41,46).addHours(7);
        requestHeader.transactionStartDateTime = DateTime.newInstanceGmt(2019,4,15,15,41,46).addHours(7);
        requestHeader.userId = null;
        requestHeader.functionName = null;
        //agentReference, loggedOnUserId, and routingIndicator are not in WSDL but are present in sample XML

        String activityType;
        WS_RiskAnalysis_Underwriting.Key[] additionalModelCodes = new List<WS_RiskAnalysis_Underwriting.Key>();
        WS_RiskAnalysis_Underwriting.Key modelCode = new WS_RiskAnalysis_Underwriting.Key();
        modelCode.id = '02414';
        additionalModelCodes.add(modelCode);

        Boolean checkForPriorErrorRecord = false;
        WS_RiskAnalysis_Underwriting.BasicCreditApplicantView coApplicant;
        String country;
        String creditRequestDateAsString;
        WS_RiskAnalysis_Underwriting.ObjectReference[] creditScoreModelReference;
        String creditScoreSourceName;
        String creditVendorCustomerNumber = '999IG00618';
        String creditVendorSecurityCode = '@U1';
        String customerCreditRecordReference;
        Boolean customerOptInIndicator = true;
        String globalCreditRecordReference;
        String inquiryType;
        String language;
        String modelTypeCode;
        Integer numberOfMthsToCountInquiries;
        Integer numberOfStaleDays = 99;
        String permissiblePurposeCode = '11';
        WS_RiskAnalysis_Underwriting.BasicCreditApplicantView primaryApplicant = new  WS_RiskAnalysis_Underwriting.BasicCreditApplicantView();
        primaryApplicant.taxRegistrationId = '569787091';
        primaryApplicant.basicPersonSummary = new WS_RiskAnalysis_Underwriting.BasicPersonSummarySubView();
        primaryApplicant.basicPersonSummary.person = new WS_RiskAnalysis_Underwriting.BasicPersonBirthdateView();
        primaryApplicant.basicPersonSummary.person.birthDate = Date.newInstance(1943,9,15);
        primaryApplicant.basicPersonSummary.personName = new WS_RiskAnalysis_Underwriting.BasicPersonNameView();
        primaryApplicant.basicPersonSummary.personName.firstName = 'SUSAN';
        primaryApplicant.basicPersonSummary.personName.lastName = 'MORGAN';
        primaryApplicant.basicPersonSummary.personName.middleName = 'J';
        primaryApplicant.postalAddress = new WS_RiskAnalysis_Underwriting.BasicPostalAddressSummaryView();
        primaryApplicant.postalAddress.city = 'Saint David';
        primaryApplicant.postalAddress.houseNumber = '2750';
        primaryApplicant.postalAddress.postalCode = '85630';
        primaryApplicant.postalAddress.region = 'AZ';
        primaryApplicant.postalAddress.street = 'Ringtail';
        WS_RiskAnalysis_Underwriting.PartyCreditScore[] priorCreditScoreModel;
        String productType;
        String requestIndicator;
        String requestorLineOfBusiness = 'HOME';
        String requestType;
        String routingIndicator;
        String stateCode;
        String targetCreditVendorName;
        String transactionType;
        String underwritingCompanyName = '02';
        String version;
        WS_RiskAnalysis.RetrieveCreditScoreResponse resp = ws.retrieveCreditScore(requestHeader, activityType, additionalModelCodes, checkForPriorErrorRecord, coApplicant, country, creditRequestDateAsString, creditScoreModelReference, creditScoreSourceName, creditVendorCustomerNumber, creditVendorSecurityCode, customerCreditRecordReference, customerOptInIndicator, globalCreditRecordReference, inquiryType, language, modelTypeCode, numberOfMthsToCountInquiries, numberOfStaleDays, permissiblePurposeCode, primaryApplicant, priorCreditScoreModel, productType, requestIndicator, requestorLineOfBusiness, requestType, routingIndicator, stateCode, targetCreditVendorName, transactionType, underwritingCompanyName, version);
        return (JSON.serializePretty(resp));
    }
}
