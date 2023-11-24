public class MyBatch implements Database.Batchable<sObject> {
    public Database.queryLocator start(Database.BatchableContext bc){
        String query = 'select id,name from account';
        return Database.getqueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, List<Account> act){
        for(Account a : act){
            a.name = a.name+'_Updated!!';
        }
        update act;
        customMethod();
    }
    
    public void customMethod(){
		System.debug('Test');
    }
    public void finish(Database.BatchableContext bc){
        
        MyBatchMerchandisePrice mb1 = new MyBatchMerchandisePrice();
        Database.executebatch(mb1);
        
    }
}