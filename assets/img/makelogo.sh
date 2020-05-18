convert -size 200x200 xc:transparent -fill black -draw 'circle 99.5,99.5 1,100' Jlogoback.png
convert -background transparent -fill rgba\(0,0,0,1\) \
-font PermanentMarker-Regular.ttf -pointsize 115 label:Jw \
-trim +repage -channel a -negate Jlogotext.png
composite -compose Copy -gravity center Jlogotext.png Jlogoback.png logo.png
rm Jlogoback.png Jlogotext.png
convert logo.png -resize 72x72 ./favicons/apple-icon-72x72.png
convert logo.png -resize 114x114 ./favicons/apple-icon-114x114.png
convert logo.png -resize 144x144 ./favicons/apple-icon-144x144.png
convert logo.png -resize 192x192 ./favicons/apple-icon-precomposed.png
convert logo.png -resize 16x16 ../../favicon.ico
convert logo.png -resize 32x32 ../../favicon.png
