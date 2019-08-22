({
	 displayOptionsLocation: function (component, searchKey , Language) {
        var action = component.get("c.getAddressAutoComplete");
        action.setParams({
            "input": searchKey,
            "langug": Language,
            "types": '(regions)'
        });

        action.setCallback(this, function (response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var options = JSON.parse(response.getReturnValue());
                console.log(response.getReturnValue());
                var predictions = options.predictions;
                var addresses = [];
                if (predictions.length > 0) {
                    
                    for (var i = 0; i < predictions.length; i++) {
                        var bc =[];
                        for(var j=0;j<predictions[i].terms.length;j++){
                            bc.push(predictions[i].terms[j].offset , predictions[i].terms[j].value );
                            }
                        addresses.push(
                            {
                                value: predictions[i].types[0],
                                PlaceId: predictions[i].place_id,
                                locaval: bc,
                                label: predictions[i].description,
                            });
                       
                    }
            
                    component.set("v.filteredOptions", addresses);
                }
            }
        });
        $A.enqueueAction(action);
    },
    sendSelectedOption:function(component,locaval2){
        
          var action1 = component.get("c.processWebResp");
        action1.setParams({
            "Res": locaval2
        });

        action1.setCallback(this, function (response) {
            
            var state = response.getState();
            if (state === "SUCCESS") {
                console.log('This is webservice resp >>');
                
            }
            
        });
        
        $A.enqueueAction(action1);
      
        
    },
    displayOptionDetails: function(component,event,placeid,PropId){
        var self = this;
         var action1 = component.get("c.getAddressDetails");
        action1.setParams({
            "PlaceId": placeid
        });

        action1.setCallback(this, function (response) {
            
           var state = response.getState();
            if (state === "SUCCESS") {
                var options = JSON.parse(response.getReturnValue());
                var Addressdet = options.result;
                var key = "address_components";
                var o = Addressdet[key]  // value2
                for(var prop in o) {
                    console.log(prop,o[prop]);  
                }
              
                var key1="geometry";
                var o1=Addressdet[key1];
                var key2="location";
                var o2=o1[key2];
               
                self.insertRecords(component,event,o,o2,PropId);                
            }
	
        });
        $A.enqueueAction(action1);
        
    },
    insertRecords:function(component,event,data,data1,PropId){
        
        for(var prop in data) {
            console.log(prop,data[prop]);  
        }
        var d=data;
        var d1=data1;
        var action1 = component.get("c.processWebResp");
        action1.setParams({
            "Res":JSON.stringify(d),
            "Res1":JSON.stringify(d1),
            "Res2": PropId
        });

        action1.setCallback(this, function (response) {
            
             var state = response.getState();
            if (state === "SUCCESS") {
                
            }
            
        });
        $A.enqueueAction(action1);
        
                
        
    },

    openListbox: function (component, searchKey) {
        var searchLookup = component.find("searchLookup");

        if (typeof searchKey === 'undefined' || searchKey.length < 3)
        {
            $A.util.addClass(searchLookup, 'slds-combobox-lookup');
            $A.util.removeClass(searchLookup, 'slds-is-open');
            return;
        }

        $A.util.addClass(searchLookup, 'slds-is-open');
        $A.util.removeClass(searchLookup, 'slds-combobox-lookup');
    },

    clearComponentConfig: function (component) {
        var searchLookup = component.find("searchLookup");
        $A.util.addClass(searchLookup, 'slds-combobox-lookup');

        component.set("v.selectedOption", null);
        component.set("v.searchKey", null);

        var iconDirection = component.find("iconDirection");
        $A.util.removeClass(iconDirection, 'slds-input-has-icon_right');
        $A.util.addClass(iconDirection, 'slds-input-has-icon_left');
    },

})