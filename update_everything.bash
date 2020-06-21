#!/bin/bash
alias python=python2.7

pushd open_exoplanet_catalogue
git pull
git checkout master
popd

pushd scripts
python create_data_iphone_11.python
popd

## Images

pushd oec_images
git pull
git checkout master
popd

rm -r data_images
cp -r oec_images/images data_images

pushd scripts
python resizeImages.bash
popd
