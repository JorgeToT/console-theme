Import-Module posh-git

function Get-ScriptDirectory { Split-Path $MyInvocaction.ScriptName }

# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/clean-detailed.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "C:\Users\$env:USERNAME\.config\powershell\profile.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord "Ctrl+d" -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git

cls