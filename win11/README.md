Install ohmyposh.dev ( ref https://ohmyposh.dev/docs/installation/windows )
```powershell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

Have to elevate the permissions to get started.

Start a admin mode powershell.
```powershell
Set-ExecutionPolicy RemoteSigned
```

Then edit the profile
```powershell
ise $profile
```

Copy the content in from `https://github.com/fsdaniel/workstation/blob/main/win11/profile.ps1`
Hit save.

in powershell(admin) run
```powershell
oh-my-posh font install
```
and install the JetBrainsMono font

Terminal settings
```
        "defaults": 
        {
            "font": 
            {
                "face": "JetBrainsMono NF"
            }
        },
```
