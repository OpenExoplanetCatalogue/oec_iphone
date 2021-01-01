#!/bin/bash

mkdir ../data_images
cp ../oec_images/images/* ../data_images/

for f in ../oec_images/images/*.png ../oec_images/images/*.jpg ../oec_images/images/*.jpeg
do
    fb=$(basename "$f")
	echo $fb
	filename=${fb%.*}
	convert -resize x260 -resize '960x<' -resize 50% -gravity center -crop 480x130+0+0 +repage -quality 90 "../oec_images/images/$fb" "../data_images/$filename.iPhone.png"
	convert -resize x260 -resize '2048x<' -resize 50% -gravity center -crop 1024x260+0+0 +repage -quality 90 "../oec_images/images/$fb" "../data_images/$filename.iPad.png"
	convert -resize x400 -resize '1200x<' -resize 50% -gravity center -crop 600x200+0+0 +repage -quality 90 "../oec_images/images/$fb" "../data_images/$filename.web.png"
	convert -resize 800x600 -quality 90 "../oec_images/images/$fb" "../data_images/$filename.weblarger.png"
done

