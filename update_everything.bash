#!/bin/bash
alias python=python2.7

git clone --depth=1 git@github.com:OpenExoplanetCatalogue/open_exoplanet_catalogue.git
pushd open_exoplanet_catalogue
git pull
popd

pushd scripts
python create_data_iphone_11.python
popd

## Images

git clone --depth=1 git@github.com:OpenExoplanetCatalogue/oec_images.git
pushd oec_images
git pull
popd

pushd scripts
./resizeImages.bash
popd
