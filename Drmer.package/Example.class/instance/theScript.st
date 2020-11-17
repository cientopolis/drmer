updating
theScript
	^ '
	function init() {

    var $ = go.GraphObject.make;  // for conciseness in defining templates

    diagram =
      $(go.Diagram, "myDiagramDiv",  // must name or refer to the DIV HTML element
        {
          initialAutoScale: go.Diagram.Uniform,  // an initial automatic zoom-to-fit
          contentAlignment: go.Spot.Center,  // align document to the center of the viewport
          layout:
            $(go.ForceDirectedLayout,  // automatically spread nodes apart
              { maxIterations: 200, defaultSpringLength: 30, defaultElectricalCharge: 100 })
        });


diagram.nodeTemplate =
$(go.Node, "Auto",
  new go.Binding("location", "loc", go.Point.parse),
  $(go.Shape, "Ellipse", { fill: "lightgray" }),
  $(go.TextBlock, { margin: 5 },
    new go.Binding("text", "label"))
);

diagram.linkTemplate =
$(go.Link,
  $(go.Shape),
  $(go.Shape, { toArrow: "Standard" }),
  $(go.TextBlock, new go.Binding("text", "levelAtOrigin"), { segmentIndex: 0, segmentFraction: 0.2 }),
  $(go.TextBlock, new go.Binding("text", "sources"), { segmentIndex: 0, segmentFraction: 0.5 }),
  $(go.TextBlock, new go.Binding("text", "levelAtDestination"), { segmentIndex: 0, segmentFraction: 0.8 })
);

diagram.model = new go.GraphLinksModel(nodeDataArray, linkDataArray);

};
	'