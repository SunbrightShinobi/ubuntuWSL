#!/usr/bin/env bash

read -p "Enter email to use with Git Configuration: " email
read -p "Enter Git Username to use with Git Configuration: " gitUserName

DLR=curl
DRAWIO_URL=https://github.com/jgraph/drawio-desktop/releases/download/v29.3.0/drawio-amd64-29.3.0.deb

sudo apt update -y
sudo apt upgrade -y

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
nano

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
python3 \ .
python3-full \ .
python3-dev \ .
python3-venv \ .
python3-pip \ .
cython3 \ .
python3-numpy \ .
python3-numpy-dev \
python3-pillow \
graphviz \
openjdk-11-jre-headless \
ghostscript \
fonts-dejavu

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
snapd

sudo addgroup docker
sudo usermod -a -G docker $USER

sudo snap install drawio

sudo python3 -m pip install \
--upgrade --upgrade-strategy only-if-needed --ignore-installed --break-system-package \
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
pillow \
sphinxcontrib-mermaid

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