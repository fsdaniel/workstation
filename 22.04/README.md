
# 22.04 ubuntu

## Required packages
```bash
sudo apt-get install zsh keychain jq
```

## Install ohmyzsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# Install kubectl
```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl
```

## Install kube-ps1.sh
```bash
mkdir ~./zsh-plugins
cp kube-ps1.sh ~./zsh-plugins/
```

## setup ~./.zshrc_daniel

Change KEY to current ssh-key.

```bash
cp zshrc_daniel ~./.zshrc_daniel
echo "source ~./.zshrc_daniel" >> ~/.zshrc
```

## Setup git env.

```bash
git config --global user.email "daniel.koopmans@true.nl"
git config --global user.name "Daniel Koopmans"
```

## Setup kubeswitch

 read up on `https://github.com/danielfoehrKn/kubeswitch/blob/master/docs/stores/rancher/rancher.md`
 install using `https://github.com/danielfoehrKn/kubeswitch/blob/master/docs/installation.md#option-2---github-releases`

Get https://github.com/danielfoehrKn/kubeswitch/blob/master/hack/switch/switch.sh
into `/home/daniel/bin/switch.sh`

```bash
echo "source /home/daniel/bin/switch.sh" >> ~./.zshrc_daniel
echo "alias kx='switch'" >> ~./.zshrc_daniel
```

