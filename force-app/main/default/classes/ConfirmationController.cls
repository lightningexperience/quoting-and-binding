public with sharing class ConfirmationController {
    public ConfirmationController() {

    }

    public static Quote__c queryAllQuoteDetails(String quoteId) {
        Quote__c quote = [SELECT Coverage_Start_Date__c,Coverage__c,Description__c,Discount__c,Expiration_Date__c,Id,Name,OwnerId,Quote_Total__c,Status__c,Subtotal__c,Tax__c,
                          (SELECT Annual_Distance__c,Business_Use__c,Daily_Commute__c,Id,Make__c,Model__c,Name,OwnerId,Prior_Coverage__c,Purchase_Condition__c,Quote__c,VIN__c,Year__c 
                           FROM Vehicles__r),
                          (SELECT Bank_Account_Number__c,Bank_Name__c,Bank_Transit_Number__c,Billing_City__c,Billing_Country__c,Billing_Email__c,Billing_Postal_Code__c,Billing_State__c,
                                  Billing_Street__c,CC_Expiry_Month__c,CC_Expiry_Year__c,CC_Security_Code__c,CreatedById,CreatedDate,Credit_Card_Number__c,Due_Date__c,Id,Name,OwnerId,
                                  Paperless_Billing__c,Paperless_Policy__c,Payment_Method__c,Payment_Name__c,Pay_Plan__c,Quote__c
                           FROM Billing__r),
                           (SELECT Id, Name, Role__c, Contact__r.FirstName, Contact__r.LastName, Contact__r.MailingCity,Contact__r.MailingCountry,Contact__r.MailingLatitude,
                           Contact__r.MailingLongitude,Contact__r.MailingPostalCode,Contact__r.MailingState,Contact__r.MailingStreet  FROM Contact_Quote_Junctions__r)
                          FROM Quote__c 
                          WHERE Id = :quoteId 
                          LIMIT 1];
        return quote;
    }
}
