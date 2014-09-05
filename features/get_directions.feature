Feature: Get alternate Directions

	Scenario: Supply the source and destination to retreive 
	          directions.
		Given the the origin "Flinders Street Station"
		And the destination "Melbourne Central Railway Station"
		Then the directions are displayed.  