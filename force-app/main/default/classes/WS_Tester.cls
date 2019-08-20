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
        WS_AutoRiskAnalysis.AutoRiskAnalysis_v2_0_SOAPoHTTPEndpoint ws = new WS_AutoRiskAnalysis.AutoRiskAnalysis_v2_0_SOAPoHTTPEndpoint();
        WS_AutoRiskAnalysis_Underwriting.RequestHeader requestHeader;
        String agentReference;
        String businessEntityId;
        Boolean checkForPriorErrorRecord;
        Boolean customerOptInIndicator;
        WS_AutoRiskAnalysis_Underwriting.BasicDriverSummaryView[] driver;
        WS_AutoRiskAnalysis_Underwriting.BasicDriverSummaryView[] driverHistory;
        String eCMSAccountNumber;
        String forceToDMV;
        String lineOfBusiness;
        Integer maxNumberofAccidentRequested;
        Integer maxNumberofViolationRequested;
        String numberOfStaleDays;
        String quoteTransactionType;
        String targetApplicationVersion;
        String transactionName;
        String underwriterCompany;
        WS_AutoRiskAnalysis_Underwriting.BasicVehicleSummary[] vehicle;
        WS_AutoRiskAnalysis.RetrieveRiskReportsResponse resp = ws.retrieveRiskReports(requestHeader, agentReference, businessEntityId, checkForPriorErrorRecord, customerOptInIndicator, driver, driverHistory, eCMSAccountNumber, forceToDMV, lineOfBusiness, maxNumberofAccidentRequested, maxNumberofViolationRequested, numberOfStaleDays, quoteTransactionType, targetApplicationVersion, transactionName, underwriterCompany, vehicle);
        return (JSON.serializePretty(resp));
    }

    @RemoteAction  
    public static String testPropertyRiskAnalysis() {
        WS_PropertyRiskAnalysis.PropertyRiskAnalysis_v4_0_SOAPoHTTPEndpoint ws = new WS_PropertyRiskAnalysis.PropertyRiskAnalysis_v4_0_SOAPoHTTPEndpoint();
        WS_PropertyRiskAnalysis_Underwriting.RequestHeader requestHeader;
        WS_PropertyRiskAnalysis_Underwriting.FinancialValuationTypeView[] assessmentBreakdown;
        WS_PropertyRiskAnalysis_Underwriting.FinancialValuation assessmentResult;
        WS_PropertyRiskAnalysis_Underwriting.FullDwellingObjectView fullDwelling;
        WS_PropertyRiskAnalysis_Underwriting.BasicPolicyView insurancePolicy;
        WS_PropertyRiskAnalysis_Underwriting.PersonName insured;
        WS_PropertyRiskAnalysis_Underwriting.PostalAddress propertyAddress;
        String userId;
        WS_PropertyRiskAnalysis.EvaluatePropertyValueResponse resp = ws.evaluatePropertyValue(requestHeader, assessmentBreakdown, assessmentResult, fullDwelling, insurancePolicy, insured, propertyAddress, userId);
        return (JSON.serializePretty(resp));
    }

    @RemoteAction  
    public static String testPhysicalObjectManager() {
        WS_PhysicalObjectManager.PhysicalObjectManager_v3_0_SOAPoHTTPEndpoint ws = new WS_PhysicalObjectManager.PhysicalObjectManager_v3_0_SOAPoHTTPEndpoint();
        WS_PhysicalObjectManager_POSchema.RequestHeader requestHeader;
        String effectiveDate;
        String ratingCompanyCode;
        WS_PhysicalObjectManager_POSchema.VehicleIdentifierView vehicleIdentifiers;
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
