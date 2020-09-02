$host.ui.RawUI.WindowTitle = “Twilio Notify Client V 0.1 By Humzaa Omar”
cd $PSScriptRoot | Out-Null
copy .\clean\msg.txt .\msg.txt | Out-Null
Write-Host "!!Attention!!
Recipients Must Be Added Manually at 
[project_dir]\clean\msg.txt
"-ForegroundColor Green 
pause
Write-Host "!!Attention!!
All Information is Stored Locally
Your Account Info is Safe!!!"-ForegroundColor Yellow 
pause
$ACCOUNT_SID = Read-Host -Prompt 'What is your Account SID?'
$AUTH_TOKEN = Read-Host -Prompt 'What is your Account Auth Token?'
$NOTIFY_SID = Read-Host -Prompt 'What is your Account Notify SID'
Write-Host " Is this Correct?
Account SID: $ACCOUNT_SID
Auth Token:  $AUTH_TOKEN
Notify SID:  $NOTIFY_SID
"  -ForegroundColor Yellow 
 $Readhost = Read-Host " ( (Y)es or (N)o ) " 
    Switch ($ReadHost) 
     { 
       Y {} 
       N {exit} 
     } 
$Message = Read-Host -Prompt 'What are the contents of the Message?'
"$PSScriptRoot\fart.exe -c -- msg.txt account_sid_var $ACCOUNT_SID" | Out-Null
"$PSScriptRoot\fart.exe -c -- msg.txt auth_token_var $AUTH_TOKEN" | Out-Null
"$PSScriptRoot\fart.exe -c -- msg.txt notify_sid_var $NOTIFY_SID" | Out-Null
"$PSScriptRoot\fart.exe -c -- msg.txt body_var $body_var"  | Out-Null
ren msg.txt msg.py | Out-Null
"$PSScriptRoot\python\Scripts\python.exe $PSScriptRoot\msg.py" | Out-File -FilePath ".\logs\$(get-date -f MM-dd-yyyy_HH_mm_ss).txt"
Write-Output "Log Location at: $PSScriptRoot\logs\$(get-date -f MM-dd-yyyy_HH_mm_ss).txt"