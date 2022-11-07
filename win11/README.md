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

Install the Meslo font
https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Meslo.zip


Terminal settings
```
        "defaults": 
        {
            "font": 
            {
                "face": "MesloLGM NF"
            }
        },
```

krew plugins
```bash
kubectl krew install neat
kubectl krew install df-pv
kubectl krew install oomd
kubectl krew install node-shell
```
