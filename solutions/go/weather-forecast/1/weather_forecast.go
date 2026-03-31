/*
Package weather contains utilities to write programs that forecast the
weather condition in Goblinocus.
*/
package weather

var (
	// CurrentCondition is the current weather condition of the city.
	CurrentCondition string

	// CurrentLocation is the selected Goblinocus city.
	CurrentLocation string
)

// Forecast takes a city and a weather condition and returns a weza-riporto.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
