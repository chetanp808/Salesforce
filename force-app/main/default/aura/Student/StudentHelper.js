({
	helperMethod : function(cmp,evt) {
		alert("Yes sir, i am your helper please let me know");
        
        var sName = cmp.get("v.studentName");
        alert("Student Name = "+sName);
        var sFName = cmp.get("v.studentFatherName");
        alert("Student Father Name = "+sFName);
        var sEmail = cmp.get("v.studentEmail");
        alert("Student Email = "+sEmail);
        var sFees = cmp.get("v.studentFees");
        alert("Student Fees = "+sFees);
        
  var action = cmp.get('c.insertStudentDetails');
        action.setParams({
            "snm" : sName,
            "sfnm" : sFName,
            "smail" : sEmail,
            "sfee" : sFees
        });
        action.setCallback(this, function(a){
            var state = a.getState();
            if(state == 'SUCCESS'){
                alert('Record Inserted Successfully....');
            }
            else{
                alert('fail');
            }
        });
        $A.enqueueAction(action);
	}
})