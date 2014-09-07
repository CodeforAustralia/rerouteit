Feature: Get alternate Directions

	Scenario: Supply the source and destination to retreive 
	          directions.
	  When visiting the application homepage.
		Given the the origin "Flinders Street Station"
		And the destination "Melbourne Central Railway Station"
		Then the directions are displayed.  