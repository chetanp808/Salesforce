public class MerchandiseArch {
	
    public static void insertMerchandiseArch(List<Merchandise__c> mer){
     	
        Merchandise_Arch__c ma;
        List<Merchandise_Arch__c> malist = new List<Merchandise_Arch__c>();
        
        for (Merchandise__c m : mer){
            ma = new Merchandise_Arch__c();
            ma.name = m.name;
            ma.Merchandise_Desc__c = m.Merchandise_Desc__c;
            ma.Merchandise_Stock__c = m.Merchandise_Stock__c;
            ma.Merchandise_Price__c = m.Merchandise_Price__c;
            malist.add(ma);
        }
        insert malist;
        
    }
    
}