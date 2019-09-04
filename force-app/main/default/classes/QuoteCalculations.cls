public class QuoteCalculations {
    static final decimal vehicle_base = 100.0;
    static final decimal home_base = 1000.0;
    static final decimal tax_percent = 0.1;
    
    @InvocableMethod
    public static List<Quote__c> setQuotePrice(List<String> quoteId) {
        decimal subtotal = 0.0;
        
		List<Quote__c> quotes = [SELECT Id, Discount__c, Start_Date__c, Expiry_Date__c, 
                          		 Status__c, Subtotal__c, Tax__c, Total__c from Quote__c WHERE Id IN :quoteId];
        
        List<Rule_General__c> vehicle_rules = [SELECT Id, Rule_Type__c, Fixed_Adjustment__c, Name__c, Adjustment_Percent__c, 
                                      		   Adjustment_Amount__c FROM Rule_General__c WHERE Rule_Type__c = 'Auto'];
        
        List<Rule_General__c> home_rules = [SELECT Id, Rule_Type__c, Fixed_Adjustment__c, Name__c, Adjustment_Percent__c, 
                                      		Adjustment_Amount__c FROM Rule_General__c WHERE Rule_Type__c = 'Home'];
        
        List<Rule_General__c> both_rules = [SELECT Id, Rule_Type__c, Fixed_Adjustment__c, Name__c, Adjustment_Percent__c, 
                                            Adjustment_Amount__c FROM Rule_General__c WHERE Rule_Type__c = 'Both'];
        decimal combo_discount = 1 + both_rules[0].Adjustment_Percent__c / 100;
                
        List<Integer> output = new Integer[quotes.size()];
        
        for (Quote__c q : quotes) {
            List<Vehicle__c> vehicles = [SELECT Id, Quote__c, Coverage__c FROM Vehicle__c WHERE Quote__c = :q.Id];
            for (Vehicle__c v : vehicles) {
                decimal vehicleCost = vehicle_base;
                String coverageRaw = v.Coverage__c;
                
	            if (String.isNotBlank(coverageRaw) ) {
                    String[] coverages = coverageRaw.split(';');
                    
                    for (String c : coverages) {
                        for (Rule_General__c rule : vehicle_rules) {
                            if (c == rule.Name__c) {
                                if (rule.Fixed_Adjustment__c) {
                                    vehicleCost += rule.Adjustment_Amount__c;
                                }
                                else {
                                    vehicleCost = vehicleCost * (1 + rule.Adjustment_Percent__c / 100);
                                }
                                
                                break;
                            }
                        }
                    }                                
                }
                
                subtotal += vehicleCost;
            }
            
            List<Property__c> properties = [SELECT Id, Quote__c, Coverage__c FROM Property__c WHERE Quote__c = :q.Id];
			for (Property__c p : properties) {
                decimal propertyCost = home_base;
                String coverageRaw = p.Coverage__c;
                
                if (String.isNotBlank(coverageRaw)) {
                    String[] coverages = coverageRaw.split(';');
                    
                    for (String c : coverages) {
                        for (Rule_General__c rule : home_rules) {
                            if (c == rule.Name__c) {
                                if (rule.Fixed_Adjustment__c) {
                                    propertyCost += rule.Adjustment_Amount__c;
                                }
                                else {
                                    propertyCost = propertyCost * (1 + rule.Adjustment_Percent__c / 100);
                                }
                                    
                                break;
                            }
                        }
                    }
                }
                    
                subtotal += propertyCost;
            }
            
            if (vehicles.size() > 0 && properties.size() > 0) {
                subtotal = subtotal * combo_discount;
            }
            
            q.Subtotal__c = subtotal;
            q.Tax__c = subtotal * tax_percent;
            q.Total__c = subtotal * (1+tax_percent);
            q.Start_Date__c = date.today();
            q.Expiry_Date__c = q.Start_Date__c.addYears(3);
        }
        
        update quotes; 
        
        return quotes;
    }
}