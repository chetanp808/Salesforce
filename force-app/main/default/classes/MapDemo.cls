public class MapDemo {

    public void getMap(){
        
        Map<String,String> mp = new Map<String,String>();
        
        mp.put('name1','Amit');
        mp.put('name2','Raj');
        mp.put('name3','Prem');			// to put key and value pairs
        mp.put('name4','Sandy');
        
        System.debug('Map elements are : '+mp);
        
        mp.put('name1','Harish');          // it will replace/update value because key already does exist..
        
        
        // iterating over values usin key  
        // we use set to retive key because keys are unique    keySet();
        
        
        Set<String> s = mp.keySet();
        
        for (String key : s){
            System.debug('Vale is : '+mp.get(key));
        }
        
        // if we want only values we use list because values are list formats
        
        List<String> val = mp.values();
        
        for (String v : val){
            System.debug('Values are : '+v);
        }
        
    }
  
}