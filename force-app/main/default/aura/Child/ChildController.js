({
	fireEvent : function(cmp, evt, hpr) {
		alert("Yes i got called");
        var e = cmp.getEvent("myEvt");
        e.setParams({"MyText":"This is last class from Aura"});
        e.fire();
	}
})