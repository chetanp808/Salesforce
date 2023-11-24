public class SetMethods {
	
    public void getSetMethods(){
        
        Set<String> s = new Set<String>();
        
        s.add('Amit');
        s.add('raj');
        s.add('Harish');
        s.add('kaka');
        
        // if i try to to insert same element again it will skip that insertion
        
        s.add('raj');
        
        System.debug('Set elements are : '+s);
        
    }
    
}