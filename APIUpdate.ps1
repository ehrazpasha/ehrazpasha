$url_base = "https://openweathermap.org/"
$url_endpoint = "/API"
$url = $url_base + $url_endpoint

$response = Invoke-RestMethod -uri $url -Method Get -ContentType "application/json" -headers $header

#option 1 for display/utilization
foreach($item in $response.all)
{
$item
}

#option 2 for display/utilization
$response | ConvertTo-Json #-Depth 1

#f4c7417d85b64a4badb6c651ed646459