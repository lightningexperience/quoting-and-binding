public class SendDocusign {
	@InvocableMethod (label='Send Envelope')
    public static List<String> createAndSendDoc (List<String> contacts) {
        List<String> output = new List<String>();
        Integer index = 0;
        
        for (String cid : contacts) {
            // Get an empty envelope definition to begin.
            dfsle.Envelope e = dfsle.EnvelopeService.getEmptyEnvelope(new dfsle.Entity(cid));
            
            //we will use a Salesforce contact record as a Recipient here
            // Contact myContact = [SELECT Id, Name, Email FROM Contact WHERE Id=:cid LIMIT 1];
            
            //use the Recipient.fromSource method to create the Recipient
            dfsle.Recipient myRecipient = dfsle.Recipient.fromSource('JZ', 'zhou059@gmail.com', null, 'Signer 1', new dfsle.Entity(cid));
            
            //add Recipient to the Envelope
            e = e.withRecipients(new List<dfsle.Recipient> { myRecipient });

            //myTemplateId contains the DocuSign Id of the DocuSign Template
            dfsle.UUID myTemplateId = dfsle.UUID.parse('36caaefc-ea83-4608-91e6-3b0052ab30a1');
            
            //create a new document for the Envelope
            dfsle.Document myDocument = dfsle.Document.fromTemplate(myTemplateId, 'jztest');
            
            //add document to the Envelope
            e = e.withDocuments(new List<dfsle.Document> { myDocument });
            //e = dfsle.EnvelopeService.createEnvelope(e, null, true);
            
            // Create the envelope in draft state
            e = dfsle.EnvelopeService.sendEnvelope(e, false);
            // Get tagger URL
            Url u = dfsle.EnvelopeService.getSenderViewUrl(e.docuSignId, new Url('https://www.google.com'));
            // Host the tagging session with the returned URL
            
            // Retrieve the five most recent envelope statuses from the Salesforce source object.
            // The status results are sorted oldest to newest.
            //List<dfsle.Envelope.Status> myStatus = dfsle.StatusService.getStatus(new Set<Id> {cid}, 5); // Maximum number of records to return.

            output[index] = u.toExternalForm();
            System.debug('OJIBOWA' + u);
            index++;
        }
        
        return output;
        
    }
    
}