public class MyBatchMerchandisePrice implements Database.Batchable<sObject> {
    public Database.queryLocator start(Database.BatchableContext bc){
        String query = 'select id,merchandise_price__c from merchandise__c';
        return Database.getqueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, List<Merchandise__c> mer){
        for(Merchandise__c c : mer){
            c.merchandise_price__c = 99;
        }
        update mer;
    }
    public void finish(Database.BatchableContext bc){
        
    }
}