function fetchCRMUserSchema {
    Param(
        [Parameter(Mandatory=$false)][System.Collections.IDictionary]$defaults = $null
    )
    $schema = [ordered]@{
        token = $null
        label = $null
        parent = $null
        created = $null
        updated = $null
        user_id = $null
        user_uuid = $null
        user_name = $null
        user_key = [System.Collections.Generic.List[String]]::new()
        meta_data = @{}
    }
    if ($null -ne $defaults) {
        foreach ($entry in $defaults.GetEnumerator()) {
            $schema.("$($entry.Key)") = $entry.Value
        }
    }
    return [System.Collections.Specialized.IOrderedDictionary]$schema
}