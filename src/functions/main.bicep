// ---------
// Functions
// ---------

// Defaults

func loadDefaults() object => loadJsonContent('../defaults.json')

// Locations

func locationAlias(location string) string => '-${loadDefaults().locations[location]}'
