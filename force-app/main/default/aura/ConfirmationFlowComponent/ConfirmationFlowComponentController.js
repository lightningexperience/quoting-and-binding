({
	doInit : function(cmp, event, helper) {
		var action = cmp.get("c.getAllQuoteInfo");
        action.setParams({ quoteId : cmp.get("v.quoteId") });
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                console.log("From server: ",response.getReturnValue());
				cmp.set("v.quote",response.getReturnValue());
            }
            else if (state === "INCOMPLETE") {
                // do something
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: ",
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
        $A.enqueueAction(action);

	}
})