(function ($) {
 "use strict";
 
		var basic = new Datamap({
                element: document.getElementById("basic_map"),
                responsive: true,
                fills: {
                    defaultFill: "#DBDAD6"
                },
                geographyConfig: {
                    highlightFillColor: '#00c292',
                    highlightBorderWidth: 0,
                },
            });

            var selected_map = new Datamap({
                element: document.getElementById("selected_map"),
                responsive: true,
                fills: {
                    defaultFill: "#DBDAD6",
                    active: "#00c292"
                },
                geographyConfig: {
                    highlightFillColor: '#00c292',
                    highlightBorderWidth: 0,
                },
                data: {
                    USA: { fillKey: "active" },
                    RUS: { fillKey: "active" },
                    DEU: { fillKey: "active" },
                    BRA: { fillKey: "active" }
                }
            });

            var usa_map = new Datamap({
                element: document.getElementById("usa_map"),
                responsive: true,
                scope: 'usa',
                fills: {
                    defaultFill: "#DBDAD6",
                    active: "#00c292"
                },
                geographyConfig: {
                    highlightFillColor: '#00c292',
                    highlightBorderWidth: 0
                },
                data: {
                    NE: { fillKey: "active" },
                    CA: { fillKey: "active" },
                    NY: { fillKey: "active" },
                }
            });
			
            var arc_map = new Datamap({
                element: document.getElementById("arc_map"),
                responsive: true,
                fills: {
                    defaultFill: "#F2F2F0",
                    active: "#00c292",
                    usa: "#00c292"
                },
                geographyConfig: {
                    highlightFillColor: '#00c292',
                    highlightBorderWidth: 0
                },
                data: {
                    USA: {fillKey: "usa"},
                    RUS: {fillKey: "active"},
                    DEU: {fillKey: "active"},
                    POL: {fillKey: "active"},
                    JAP: {fillKey: "active"},
                    AUS: {fillKey: "active"},
                    BRA: {fillKey: "active"}
                }
            });

            arc_map.arc(
                    [
                        { origin: 'USA', destination: 'RUS'},
                        { origin: 'USA', destination: 'DEU'},
                        { origin: 'USA', destination: 'POL'},
                        { origin: 'USA', destination: 'JAP'},
                        { origin: 'USA', destination: 'AUS'},
                        { origin: 'USA', destination: 'BRA'}
                    ],
                    { strokeColor: '#00c292', strokeWidth: 1}
            );
			
	
})(jQuery); 