public class SQLDemo1 {

    public void getAllRecords(){
        
        List<Merchandise__c> m = [select id, name, Merchandise_Desc__c, Merchandise_Stock__c, Merchandise_Price__c from Merchandise__c];
        
        for (Merchandise__c a : m ){
            System.debug('id : '+a.id+' '+'Name : '+a.name+' '+'Desc : '+a.Merchandise_Desc__c+' '+'Stock : '+a.Merchandise_Stock__c+'Price : '+a.Merchandise_Price__c);
        }
    }  
}