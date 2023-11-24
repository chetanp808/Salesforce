public class Invoicebatch implements Database.Batchable<sObject> {
	 public Database.queryLocator start(Database.BatchableContext bc){
        String query = 'select id,Invoice_Date__c from invoice__c';
        return Database.getqueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, List<invoice__c> inv){
        for(invoice__c i : inv){
            i.Invoice_Date__c=system.today();
        }
        update inv;
    }
    
     public void finish(Database.BatchableContext bc){
         
    }
}