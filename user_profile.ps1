# Imports
Import-Module -Name Terminal-Icons
Import-Module -Name PSReadLine

# Configurations
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord "Ctrl+d" -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Styles
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/catppuccin_latte.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/montys.omp.json" | Invoke-Expression

# Aliases
set-alias ll 'ls'
set-alias cls 'clear'
Set-Alias vim 'nvim'
Set-Alias g 'git'

# Functions
function gs { git status }
function gp { git pull }
function gco { param([string]$msg); git commit -m $msg }
function gpu { git push }
function gd { git diff }
function docs { Set-Location -Path "$HOME\Documents" }
function dl { Set-Location -Path "$HOME\Downloads" }
function proj { Set-Location -Path "$HOME\Documents\Projects" }
function root { Set-Location -Path "C:\" }
function Get-ScriptDirectory { Split-Path $MyInvocaction.ScriptName }
