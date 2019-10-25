<#
.SYNOPSIS
    Short description
.DESCRIPTION
    Long description
.EXAMPLE
    PS C:\> <example usage>
    Explanation of what the example does
.INPUTS
    Inputs (if any)
.OUTPUTS
    Output (if any)
.NOTES
    General notes
#>


#1 counted timer using a timespan object
$StartTime = $(Get-Date)
$elapsedTime =  $(Get-Date) - $StartTime

$processes = Get-Process

foreach($process in $processes){

if($elapsedTime -lt [timespan]'00:05:00'){

    $elapsedTime =  $(Get-Date) - $StartTime
    $elapsedTime.seconds
    $elapsedTime.Minutes

    Write-Host $process.ProcessName
    Start-Sleep -s 30

}
else{
    Write-Host "Stopwatch has reached zero. Job will stop until next run."
    break;
    }
}

#2 Countdown timer using system.diag stopwatch object

#$millseconds = 3300000
#$millseconds = 600000

#$Stopwatch = New-Object System.Diagnostics.Stopwatch
#$Stopwatch.Start()

#$Stopwatch.ElapsedMilliseconds