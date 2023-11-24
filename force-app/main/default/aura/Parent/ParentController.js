({
	handleEvent : function(cmp, evt, hpr) {
		alert("Yes, I am ready to handle the event");
        var v = evt.getParam("MyText");
        alert(v);
	}
})