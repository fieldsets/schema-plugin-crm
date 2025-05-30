#!/usr/bin/env pwsh

$plugin_path = (Get-Location).Path

Write-Output "## CRM Schema Plugin Import Script ##"
Write-Output "$($plugin_path)"

$plugin = Get-Content -Raw -Path "$($plugin_path)/plugin.json" | ConvertFrom-Json

$schemas = Get-ChildItem "$($plugin_path)/config/schemas/*.json"

foreach ($schema in $schemas) {
    $schemaObject = Get-Content -Raw -Path "$($schema)" | ConvertFrom-Json -NoEnumerate -AsHashtable
    if ($null -ne $schemaObject) {
        $schemaJSON = ConvertTo-Json -depth 10 -Compress -InputObject $schemaObject
        $split_name = ($schema.BaseName).split("-",2)
        $priority = $split_name[0]
        $token = $split_name[1]

        & "/usr/local/fieldsets/bin/import-json.sh" -token "$($token)" -source 'crm' -json "$($schemaJSON)" -type 'schema' -priority $($priority)
    }
}

Exit
