public class QuoteConfirmationDetails {
    @AuraEnabled
    public static Quote__c getAllQuoteInfo(String quoteId) {
        
        /* 
		Quote__c output = [SELECT Coverage_Start_Date__c,Expiration_Date__c,Id,Name,Quote_Total__c,Subtotal__c,Tax__c,
         (SELECT Coverage__c,Annual_Distance__c,Business_Use__c,Daily_Commute__c,Id,Make__c,Model__c,Prior_Coverage__c,Purchase_Condition__c,Quote__c,VIN__c,Year__c FROM Vehicles__r),
         (SELECT Id, Coverage__c,Ownership_Type__c, Property_Type__c, Street__c, City__c, State__c, Country__c, Postal_Code__c FROM Properties__r),
         (SELECT Bank_Account_Number__c,Bank_Name__c,Bank_Transit_Number__c,Billing_City__c,Billing_Country__c,Billing_Email__c,Billing_Postal_Code__c,Billing_State__c,
          Billing_Street__c,CC_Expiry_Month__c,CC_Expiry_Year__c,CC_Security_Code__c,Credit_Card_Number__c,Due_Date__c,Id,
          Paperless_Billing__c,Paperless_Policy__c,Payment_Method__c,Payment_Name__c,Pay_Plan__c,Quote__c
          FROM Billing__r),
         (SELECT Id, Role__c, Contact__r.FirstName, Contact__r.LastName, Contact__r.MailingCity,Contact__r.MailingCountry,Contact__r.MailingLatitude,
            Contact__r.MailingLongitude,Contact__r.MailingPostalCode,Contact__r.MailingState,Contact__r.MailingStreet FROM Contact_Quote_Junctions__r)
	FROM Quote__c WHERE Id = :quoteId LIMIT 1];
		*/
		Quote__c output = [SELECT Coverage_Start_Date__c,Expiration_Date__c,Id,Name,Quote_Total__c,Subtotal__c,Tax__c,
             (SELECT Id, Coverage__c, Annual_Distance__c,Business_Use__c,Daily_Commute__c, Make__c,Model__c, VIN__c,Year__c FROM Vehicles__r),
             (SELECT Id FROM Properties__r),
             (SELECT Id FROM Billing__r),
             (SELECT Role__c, Contact__r.Id FROM Contact_Quote_Junctions__r)
        FROM Quote__c WHERE Id = :quoteId LIMIT 1];
        
        return output;
    }
}