({
	helperMethod : function(cmp,evt) {
		alert("Yes sir, i am your helper please let me know");
        
        var eName = cmp.get("v.empName");
        alert("Employee Name = "+eName);
        var eFName = cmp.get("v.empFatherName");
        alert("Employee Father Name = "+eFName);
        var eAddress = cmp.get("v.empAddress");
        alert("Employee Address = "+eAddress);
        var eDept = cmp.get("v.empDept");
        alert("Employee Department = "+eDept);
        var eSalary = cmp.get("v.empSalary");
        alert("Employee Salary = "+eSalary);
        
  var action = cmp.get('c.insertEmpDetails');
        action.setParams({
            "enm" : eName,
            "efnm" : eFName,
            "eaddr" : eAddress,
            "edpt" : eDept,
            "esal" : eSalary
        });
        action.setCallback(this, function(a){
            var state = a.getState();
            if(state == 'SUCCESS'){
                alert('Record Inserted Successfully....');
            }
        });
        $A.enqueueAction(action);
	}
})