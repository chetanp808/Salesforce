trigger OppTrigger on Opportunity (before insert, before update, before delete, after insert, after update, after delete, after undelete) 
{
        if(Trigger.isUpdate && Trigger.isBefore)
        {
             myOpprtunityState.changeState(Trigger.old,Trigger.new);
        }}