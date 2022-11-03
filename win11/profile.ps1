$Env:Path += ';%USERPROFILE%\.krew\bin'
$MyStartFolder = 'c:\k8s-tools\'
if (-not( Test-Path -Path $MyStartFolder)) {
    mkdir c:\k8s-tools\
}    
if (-not(Test-Path -Path 'c:\k8s-tools\k-alias.ps1')) {
    curl https://raw.githubusercontent.com/fsdaniel/workstation/main/win11/k-alias.ps1 -o c:\k8s-tools\k-alias.ps1
}
if (-not(Test-Path -Path 'c:\k8s-tools\prompt.json')) {
    curl https://raw.githubusercontent.com/fsdaniel/workstation/main/win11/prompt.json -o c:\k8s-tools\prompt.json
}
cat k-alias.ps1 | Out-String | Invoke-Expression
oh-my-posh init pwsh --config 'c:\k8s-tools\prompt.json' | Invoke-Expression

# Set vscode as default editor for kubectl edit
$env:KUBE_EDITOR="code --wait"

# Set Default location
Set-Location $MyStartFolder

# Set alias commands
Set-Alias -Name k -Value kubectl
Set-Alias -Name grep -Value select-string
#Set-Alias -Name kcuc -Value "kubectl config use-context"
function kcn() { & kubectl config set-context --current --namespace=$args }
function kcuc() { & kubectl config use-context $args }
function kcls() { & kubectl config get-contexts }
