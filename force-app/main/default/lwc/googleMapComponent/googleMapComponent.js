import { LightningElement, track, api } from 'lwc';

export default class GoogleMapComponent extends LightningElement {

    @track mapmarkers;
    @api street;
    @api city;
    @api state;

    connectedCallback() {
        this.update(this.street,this.city,this.state);
    }
    @api
    update(street,city,state) {
        this.mapmarkers = [
            {
                location: {
                    Street: street,
                    City: city,
                    State: state
                },
                title: street
            }
        ]

    }
}
