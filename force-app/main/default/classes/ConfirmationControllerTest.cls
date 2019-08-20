@IsTest
public with sharing class ConfirmationControllerTest {
    public ConfirmationControllerTest() {}

    @TestSetup
    static void makeData(){
        Quote__c q = new Quote__c();
        insert q;
        Contact c1 = new Contact();
        c1.LastName = 'Test User 1';
        insert c1;
        Contact_Quote_Junction__c cq1 = new Contact_Quote_Junction__c();
        cq1.Contact__c = c1.Id;
        cq1.Quote__c = q.Id;
        insert cq1;
        Contact c2 = new Contact();
        c2.LastName = 'Test User 2';
        insert c2;
        Contact_Quote_Junction__c cq2 = new Contact_Quote_Junction__c();
        cq2.Contact__c = c2.Id;
        cq2.Quote__c = q.Id;
        insert cq2;
        Vehicle__c v = new Vehicle__c();
        v.Quote__c = q.Id;
        insert v;
        Billing__c b = new Billing__c();
        b.Quote__c = q.Id;
        insert b;
    }

    static testmethod void testControllerQuery(){
        
        Test.startTest();
       
        List<Quote__c> quotes = [SELECT Id from Quote__c];
        ConfirmationController.queryAllQuoteDetails(quotes[0].Id);
    
        Test.stopTest();
        
    }


}
