#!/bin/bash
bash /home/rein/oec_web/venv/bin/activate

pushd scripts
python create_data_iphone_11.python
popd
