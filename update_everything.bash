#!/bin/bash
alias python=python2.7

pushd open_exoplanet_catalogue
git pull
git checkout master
popd

pushd scripts
python create_data_iphone_11.python
popd

cp open_exoplanet_catalogue/images/*.* data_images/ 
