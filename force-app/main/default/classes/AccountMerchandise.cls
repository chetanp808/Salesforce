public class AccountMerchandise {
    public void getAccountDetails(){
    	List<Account> ac = [select id, name from account];    

    
    for (Account a: ac){
        System.debug('Id : '+a.id+'      '+'Name : '+a.name);
    	}
        
    }
    
    public void getMerchndiseDetails(){
		List<Merchandise__c> mer  = [select id, name from Merchandise__c ];    

        for (Merchandise__c m : mer){
            System.debug('Id : '+m.id+'      '+'Name : '+m.name);
            }
    }
}