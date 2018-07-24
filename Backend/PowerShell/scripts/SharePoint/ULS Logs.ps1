$ComputerName | Get-SPULSEvents -MinimumLevel Critical -StartTime (Get-Date).AddHours(-3) | Select "Server Name", "Timestamp", "Process", "Area", "Category", @{N="Message";E={$_.Message | ConvertFrom-IllegalCharacters}}, "Correlation" | Select -First 200 