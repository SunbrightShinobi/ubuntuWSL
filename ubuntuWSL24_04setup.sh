#!/usr/bin/env bash

read -p "Enter email to use with Git Configuration: " email
read -p "Enter Git Username to use with Git Configuration: " gitUserName

DLR=curl
DLR_FLAGS=-L
ACROTEX_URL=http://mirrors.ctan.org/macros/latex/contrib/acrotex.zip
DRAWIO_URL=https://github.com/jgraph/drawio-desktop/releases/download/v28.0.6/drawio-amd64-28.0.6.deb

read -p "Press any key to Update apt Database ..."

sudo apt update -y

read -p "Press any key to Upgrade OS ..."

sudo apt upgrade -y

read -p "Press any key to Install/Upgrade base apps ..."

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
nano

read -p "Press any key to Install/Upgrade dev apps ..."

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

read -p "Press any key to Install/Upgrade Python3, Cython, Numpy, Graphviz, Java, Ghostscript and Fonts ..."

sudo apt upgrade -y \
python3 \
python3-full \
python3-dev \
python3-venv \
cython3 \
python3-numpy \
python3-numpy-dev \
python3-pillow \
graphviz \
openjdk-11-jre-headless \
ghostscript \
fonts-dejavu

read -p "Press any key to Install/Upgrade texlive ..."

sudo apt upgrade -y \
texlive-latex-recommended \
texlive-latex-extra \
texlive-font-utils \
latexmk

read -p "Press any key to resume ..."

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
podman-docker

sudo addgroup docker
sudo usermod -a -G docker $USER

read -p "Press any key to Install DrawIO ..."

sudo $DLR $DLR_FLAGS $DRAWIO_URL \
-o /tmp/draw.io.deb

sudo apt upgrade -y \
/tmp/draw.io.deb

read -p "Press any key to Install Sphinx Python3 Packages ..."

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
yamlreader==3.0.4 \
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

nety \ fails

read -p "Press any key to Install Acrotex ..."

sudo $DLR $DLR_FLAGS $ACROTEX_URL \
-o /tmp/acrotex.zip

sudo unzip \
/tmp/acrotex.zip -d /usr/share/texlive/texmf-dist/tex/latex/

cd /usr/share/texlive/texmf-dist/tex/latex/acrotex; sudo latex acrotex.ins
cd /usr/share/texlive/texmf-dist/tex/latex/acrotex; sudo mktexlsr

sudo ln -s \
/usr/share/fonts/truetype/dejavu \
/usr/share/fonts/dejavu

read -p "Press any key to Perform Cleanup ..."

sudo rm -f \
/tmp/acrotex.zip

sudo rm -f \
/tmp/draw.io.deb

sudo apt autoremove

read -p "Press any key to Configure user account ..."

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