/*
Copyright (c) 2010 Tom Carden, Steve Coast, Mikel Maron, Andrew Turner, Henri Bergius, Rob Moran, Derek Fowler
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 * Neither the name of the Mapstraction nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
mxn.register('streetmap', {  

Mapstraction: {
  
  init: function(element,api) {   
    
    this.maps[api] = new CAatMap();
    this.maps[api].SetOutput(element.id);
    
    var newlayer = this.maps[api].AddLayer("map",500);
    // Turn off the "points" button, won't be used in this example
    //this.maps[api].SetPointsButtons(false);
    // Set a starting point for the map
    // Start in map view
    newlayer.SetType("map");
    this.maps[api].Init();
  },
  
  applyOptions: function(){
    var map = this.maps[this.api];
  
    // TODO: Add provider code
  },
  
  setCenterAndZoom: function(point, zoom) { 
		var map = this.maps[this.api];
				
		map.Jump(point.lat, point.lon);
		//map.setZoom(zoom);
	},
	
	/*LatLonPoint: {
	
		toProprietary: function() {
			//return new google.maps.LatLng(this.lat, this.lon);
		},

		fromProprietary: function(googlePoint) {
			//this.lat = googlePoint.lat();
			//this.lon = googlePoint.lng();
		}


	},
  
  addMarker: function(marker, old) {
		//var map = this.maps[this.api];
		//var pin = marker.toProprietary(this.api);
	
		//map.addOverlay(pin);
	
		//return pin;
	},

	removeMarker: function(marker) {
		//var map = this.maps[this.api];
	
		// TODO: Add provider code
	},
  
  setMapType: function(type) {
		var map = this.maps[this.api];
		switch(type) {
		case mxn.Mapstraction.ROAD:
			// TODO: Add provider code
			break;
		case mxn.Mapstraction.SATELLITE:
			// TODO: Add provider code
			break;
		case mxn.Mapstraction.HYBRID:
			// TODO: Add provider code
			break;
		default:
			// TODO: Add provider code
		}
	}*/
}
});