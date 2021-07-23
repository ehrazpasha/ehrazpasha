
# Setup Variables
$ApiKey = "43fc8dd5eebe41d6a6b85328212307"
$Query = "22030"
$Days = 3
$Uri ="http://api.weatherapi.com/v1/forecast.json?key=$ApiKey&q=$Query&Days=$Days"

Write-Host "Api call Uri: $Uri"

#Make the request
$Request = Invoke-WebRequest -Uri $Uri

$ConvertedJson = $Request.Content | ConvertFrom-Json 
$ConvertedJson.location
