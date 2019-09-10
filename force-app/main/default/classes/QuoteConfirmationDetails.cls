public class QuoteConfirmationDetails {
    @AuraEnabled
    public static Quote__c getAllQuoteInfo(String quoteId) {

		Quote__c output = [SELECT Id,
             (SELECT Id FROM Vehicles__r),
             (SELECT Id FROM Properties__r),
             (SELECT Id FROM Lives__r),
             (SELECT Id FROM Annuities__r),
             (SELECT Id FROM Billing__r),
             (SELECT Role__c, Contact__r.Id FROM Contact_Quote_Junctions__r)
        FROM Quote__c WHERE Id = :quoteId LIMIT 1];
        
        return output;
    }
}