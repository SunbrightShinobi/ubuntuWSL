#!/usr/bin/env bash

read -p "Enter email to use with Git Configuration: " email
read -p "Enter Git Username to use with Git Configuration: " gitUserName

sudo apt update -y

sudo apt upgrade -y \
bash \
bash-completion \
coreutils \
wget \
curl \
zip \
unzip \
git-lfs \
subversion \
genisoimage \
neofetch \
openssh-client \
nano \
ca-certificates

sudo apt upgrade -y \
gcc \
ghc \
libgmp10 \
libffi8 \
musl-dev \
sed \
zlib1g-dev \
libjpeg-dev \
dvipng \
python3-full \
graphviz \
openjdk-17-jre \
ghostscript \
fonts-dejavu \
software-properties-common \
build-essential \
libfreetype6-dev \
libjpeg-dev z\
lib1g-dev \
liblcms2-dev \
libopenjp2-7-dev \
libtiff5-dev \
tcl8.6-dev \
tk8.6-dev \
texlive-latex-recommended \
texlive-latex-extra \
texlive-font-utils \
latexmk \
openssl \
libicu74 \
libkrb5-3 \
libsecret-common \
gnome-keyring \
desktop-file-utils \
xvfb \
plantuml \
docker.io \
snapd \
libfreetype6-dev \
libjpeg-dev \
zlib1g-dev \
nodejs npm \
chromium-browser \
libfreetype6-dev \
libjpeg-dev \
zlib1g-dev \
libfuse2 \
strace

wget https://github.com/jgraph/drawio-desktop/releases/download/v29.3.0/drawio-amd64-29.3.0.deb
sudo apt install ./drawio-amd64-29.3.0.deb
wget https://api.gitkraken.dev/releases/production/linux/x64/active/gitkraken-amd64.deb
sudo apt install ./gitkraken-amd64.deb

pip install --no-binary :all: pillow

export CHROME_PATH=/usr/bin/chromium-browser

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.6/install.sh | bash
source ~/.bashrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 20
nvm use 20
node -v
nvm alias default 20
# Should show v20.x.x

npm install -g puppeteer
npm install -g @mermaid-js/mermaid-cli
sudo npm install -g @mermaid-js/mermaid-cli

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update

sudo apt update
sudo apt install python3.12 python3.12-venv python3.12-dev -y

cd ~
python3.12 -m venv sphinx312
source sphinx312/bin/activate

pip install --upgrade \
pip \
wheel \
setuptools \

pip install --upgrade \
sphinx \
sphinx-autobuild \
sphinx-jinja \
netaddr \
gitpython \
sphinx-git \
sphinx_rtd_theme \
plantuml \
sphinxcontrib-plantuml \
reportlab \
colorama \
xlsxwriter \
pandas \
tablib \
ciscoconfparse \
sphinxcontrib-jupyter \
sphinxcontrib-confluencebuilder \
pyyaml \
yamlreader \
sphinxcontrib-drawio \
sphinxcontrib-drawio-html \
sphinx-markdown-builder \
sphinxcontrib-fulltoc \
rinohtype \
sphinxcontrib-bibtex \
kroki \
sphinxcontrib-kroki \
sphinxcontrib.seqdiag \
sphinxcontrib.nwdiag \
sphinxcontrib.blockdiag \
sphinxcontrib.actdiag \
pillow==9.5.0 \
sphinxcontrib-mermaid \
charset-normalizer \
github-copilot-sdk \
"setuptools<81"


python -c "import charset_normalizer; print(charset_normalizer.__version__)"

export AIOHTTP_NO_EXTENSIONS=1
echo 'export AIOHTTP_NO_EXTENSIONS=1' >> ~/sphinx311/bin/activate

sudo curl -L \
"http://mirrors.ctan.org/macros/latex/contrib/acrotex.zip" -o /tmp/acrotex.zip
sudo unzip \
/tmp/acrotex.zip -d /usr/share/texlive/texmf-dist/tex/latex/

cd /usr/share/texlive/texmf-dist/tex/latex/acrotex; sudo latex acrotex.ins
cd /usr/share/texlive/texmf-dist/tex/latex/acrotex; sudo mktexlsr

sudo ln -s \
/usr/share/fonts/truetype/dejavu \
/usr/share/fonts/dejavu

sudo rm -f \
/tmp/acrotex.zip

(type -p wget >/dev/null || (sudo apt update && sudo apt install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
	&& out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
	&& cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& sudo mkdir -p -m 755 /etc/apt/sources.list.d \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y

sudo apt autoremove

sudo git config --system core.autocrlf false
sudo git config --system core.symlinks false
sudo git config --system rebase.autosquash true
sudo git config --system lfs.activitytimeout 0
sudo git config --system credential.helper 'cache --timeout 30000'
git lfs install
echo neofetch >> ~/.profile
echo source sphinx312/bin/activate >> ~/.profile
git config --global user.name $gitUserName
git config --global user.email $email

apt list --installed > ~/installedPackages.txt
python3 -m pip list > ~/installedPython3Packages.txt

cd ~
git clone --recurse-submodules https://github.com/SunbrightShinobi/sphinx-manual.git