
Import-Module ActiveDirectory
# Output path
$outputPath = "C:\snipeit_users.csv"
# Create an empty array to hold user objects
$usersList = @()
# Get all enabled users with email addresses
Get-ADUser -Filter {Enabled -eq $true -and EmailAddress -like "*" -and GivenName -like "*"} -Properties GivenName,Surname,Mail,Title,Department,Office,TelephoneNumber |
ForEach-Object {
    $user = $_

    # Build a custom object for each user
    $userObj = [PSCustomObject]@{
        first_name  = $user.GivenName
        last_name   = $user.Surname
        email       = $user.Mail
        username    = $user.Mail
        phone       = $user.TelephoneNumber
        location    = $user.Office
        title       = $user.Title
        department  = $user.Department
        company     = "Company Name"
        password    = "Password"
        activated   = "false" #Can't Login
    }

    # Add to array
    $usersList += $userObj
}

# Export to CSV
$usersList | Export-Csv -Path $outputPath -NoTypeInformation -Encoding UTF8

Write-Host " Export complete! File saved to: $outputPath"

