#!/bin/bash
alias python=python2.7

rm -r open_exoplanet_catalogue
git clone --depth=1 git@github.com:OpenExoplanetCatalogue/open_exoplanet_catalogue.git

pushd scripts
python create_data_iphone_11.python
popd

## Images

rm -r oec_images
git clone --depth=1 git@github.com:OpenExoplanetCatalogue/oec_images.git
cp -r oec_images/images data_images

pushd scripts
./resizeImages.bash
popd
