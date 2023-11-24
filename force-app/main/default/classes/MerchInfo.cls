public class MerchInfo {
@auraEnabled
    public static void insertMerchandiseDetails(String mnm, String mdsc, String mstk, String mprc){
        Merchandise__c mer = new Merchandise__c();
        mer.name=mnm;
        mer.Merchandise_Desc__c = mdsc;
        mer.Merchandise_Stock__c = Integer.valueOf(mstk);
        mer.Merchandise_Price__c = Integer.valueOf(mprc);
        insert mer;
    }
}