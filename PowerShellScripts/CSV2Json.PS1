# Define the path to the input CSV file and output JSON file
$csvFilePath = "C:\path\to\your\input_sentinel.csv"
$jsonFilePath = "C:\path\to\your\output_sentinel.json"

# Import the CSV file
$csvData = Import-Csv -Path $csvFilePath

# Convert the CSV data to JSON
$jsonData = $csvData | ConvertTo-Json -Depth 3

# Write the JSON data to the output file
$jsonData | Out-File -FilePath $jsonFilePath -Encoding UTF8

Write-Host "CSV has been converted to JSON and saved to $jsonFilePath"
