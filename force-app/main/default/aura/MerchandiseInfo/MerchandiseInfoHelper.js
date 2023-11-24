({
	helperMethod : function(cmp,evt) {
		alert("Yes sir, i am your helper please let me know");
        var mName = cmp.get("v.merchName");
        alert("Merchandise Name = "+mName);
        var mDesc = cmp.get("v.merchDesc");
        alert("Merchandise Description = "+mDesc);
        var mStock = cmp.get("v.MerchStock");
        alert("Merchandise Stock = "+mStock);
        var mPrice = cmp.get("v.MerchPrice");
        alert("Merchandise Price = "+mPrice);
  var action = cmp.get('c.insertMerchandiseDetails');
        action.setParams({
            "mnm" : mName,
            "mdsc" : mDesc,
            "mstk" : mStock,
            "mprc" : mPrice
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