public class Campaigtrap {
	public static void trapDel(List<Campaign> cp){
     	
        Campaign_Arch__c ca;
        List<Campaign_Arch__c> calist = new List<Campaign_Arch__c>();
        
        for (Campaign c : cp){
            ca = new Campaign_Arch__c();
            ca.name = c.name;
            calist.add(ca);
        }
        insert calist;
        
    }
}