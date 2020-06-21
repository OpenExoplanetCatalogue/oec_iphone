#!/bin/bash

for f in ../data_images/*.png ../data_images/*.jpg ../data_images/*.jpeg
do
	filename=${f%.*}
	echo $filename
	convert -resize x260 -resize '960x<' -resize 50% -gravity center -crop 480x130+0+0 +repage -quality 90 "$f" "$filename.iPhone.png"
	convert -resize x260 -resize '2048x<' -resize 50% -gravity center -crop 1024x130+0+0 +repage -quality 90 "$f" "$filename.iPad.png"
	convert -resize x400 -resize '1200x<' -resize 50% -gravity center -crop 600x200+0+0 +repage -quality 90 "$f" "$filename.web.png"
	convert -resize 800x600 -quality 90 "$f" "$filename.weblarger.png"
done

