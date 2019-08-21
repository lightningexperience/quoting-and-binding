({
    loadOptions: function (component, event, helper) {
        var opts = [
            { value: "de", label: "German" },
            { value: "es", label: "Spanish" },
            { value: "ta", label: "Tamil" },
            { value: "en", label: "English" }
        ];
        component.set("v.options", opts);
    },
    handleSelect:function(component,event,helper){
        var selected = event.getSource().get("v.value");
    },
    keyPressController: function (component, event, helper) {
        
        var prpAct2=component.find("prptext3");
        var prpActVal2 = prpAct2.get("v.value");
        prpAct2.set("v.errors", null);
        var searchKey = component.get("v.searchKey");
        var Language = component.get("v.selectedValue");
        helper.openListbox(component, searchKey);
        helper.displayOptionsLocation(component, searchKey,Language);
    },
    clear: function (component, event, helper) {
        helper.clearComponentConfig(component);
    },
    selectOption: function (component, event, helper) {
        var placeid = event.currentTarget.dataset.placeid;
        var action = component.get("c.getAddressDetails");
        action.setParams({
            "PlaceId": placeid
        });
        action.setCallback(this, function (response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                console.log(response.getReturnValue());
                var results = JSON.parse(response.getReturnValue());
                var addressComponents = results.result.address_components;
                var formattedAddress = results.result.formatted_address;
                component.set("v.searchKey",formattedAddress);
                console.log(addressComponents);
            } else {
                console.error(response.getError());
            }

        });
        $A.enqueueAction(action);

    }
    
    
})