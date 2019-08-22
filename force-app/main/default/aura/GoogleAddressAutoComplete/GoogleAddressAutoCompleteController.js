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
        component.set("v.showDropdown", true);
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
                addressComponents.forEach(function(e) {
                    if (e.types.includes("street_number")) {
                        console.log(e.long_name);
                        component.set("v.streetNumber",e.long_name);
                    }
                    if (e.types.includes("route")) {
                        console.log(e.long_name);
                        component.set("v.street",e.long_name);
                    }
                    if (e.types.includes("locality")) {
                        console.log(e.long_name);
                        component.set("v.city",e.long_name);
                    }
                    if (e.types.includes("administrative_area_level_1")) {
                        console.log(e.long_name);
                        component.set("v.state",e.long_name);
                    }
                    if (e.types.includes("country")) {
                        console.log(e.short_name);
                        component.set("v.country",e.short_name);
                    }
                    if (e.types.includes("postal_code")) {
                        console.log(e.long_name);
                        component.set("v.postal",e.long_name);
                    }
                })
                component.set("v.showDropdown", false);
                component.set("v.searchKey",formattedAddress);
                //var a = component.get('c.keyPressController');
        		//$A.enqueueAction(a);
                console.log(addressComponents);
            } else {
                console.error(response.getError());
            }

        });
        $A.enqueueAction(action);

    }
    
    
})