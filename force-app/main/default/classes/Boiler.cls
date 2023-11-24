public class Boiler {
	
    public void getBoiled(integer speed){
        try{
            if (speed>=100){
                throw new BoilerException();
            }
            else{
                System.debug('Boiling sir');
            }
        }catch(BoilerException e){
            speed = 0;
            System.debug('Boiler Rest');
        }
    }
    
}