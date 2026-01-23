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
dvipng

sudo apt upgrade -y \
python3-full \
graphviz \
openjdk-11-jre-headless \
ghostscript \
fonts-dejavu \
software-properties-common \
build-essential \
python3-dev python3-pip \
libfreetype6-dev \
libjpeg-dev z\
lib1g-dev \
liblcms2-dev \
libopenjp2-7-dev \
libtiff5-dev \
tcl8.6-dev \
tk8.6-dev

sudo apt upgrade -y \
texlive-latex-recommended \
texlive-latex-extra \
texlive-font-utils \
latexmk

sudo apt upgrade -y \
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
zlib1g-dev

pip install --no-binary :all: pillow

export CHROME_PATH=/usr/bin/chromium-browser

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.6/install.sh | bash
source ~/.bashrc

nvm install 20
nvm use 20
node -v
# Should show v20.x.x
npm install -g puppeteer
npm install -g @mermaid-js/mermaid-cli

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update

sudo apt install -y python3.11 python3.11-venv python3.11-dev
sudo apt update

sudo snap install drawio

python3.11 -m venv ~/sphinx311 source ~/sphinx311/bin/activate

pip install --upgrade \
pip \
wheel \
setuptools \
chardet

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
vscod \
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
sphinxcontrib-mermaid

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

sudo rm -f \
/tmp/draw.io.deb

sudo apt autoremove

sudo git config --system core.autocrlf false
sudo git config --system core.symlinks false
sudo git config --system rebase.autosquash true
sudo git config --system lfs.activitytimeout 0
sudo git config --system credential.helper 'cache --timeout 30000'
git lfs install
echo neofetch >> ~/.profile
git config --global user.name $gitUserName
git config --global user.email $email

apt list --installed > ~/installedPackages.txt
python3 -m pip list > ~/installedPython3Packages.txt