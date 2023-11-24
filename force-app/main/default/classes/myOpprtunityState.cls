public class myOpprtunityState {
	public static void changeState(List<Opportunity> l1,List<Opportunity> l2)
    {	
        //Bulkifying
    	 for(Opportunity o1:l1)
			{
  			  for (Opportunity o2:l2)
   				 {
        			if(o1.StageName=='closed won'&&o2.StageName=='closed lost')
            			 o2.NextStep ='escalate to manager';
   				 }
  		    }
	}
}