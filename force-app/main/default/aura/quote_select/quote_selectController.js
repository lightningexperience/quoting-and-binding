({
	onSelect : function(component, event) {
        var currentSelected = component.find(component.get("v.starter_option"));
        $A.util.removeClass(currentSelected, "selected");
        var selectedItem = component.find(event.currentTarget.dataset.value);
        $A.util.addClass(selectedItem, "selected");
		component.set("v.starter_option", event.currentTarget.dataset.value);
	},
    
    onMouseOver : function(component, event) {
        var selectedItem = component.find(event.currentTarget.dataset.value);
        $A.util.addClass(selectedItem, "hover");
    },
    
    onMouseOut : function(component, event) {
        var selectedItem = component.find(event.currentTarget.dataset.value);
        $A.util.removeClass(selectedItem, "hover");
    }
})