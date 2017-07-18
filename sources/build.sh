FONTS=$(ls ../fonts/*.ttf)

for font in $FONTS
do
    ttfautohint -d "$font" "$font.fix"
done

rm $FONTS

FONTS=$(ls ../fonts/*.fix)

for font in $FONTS
do
    mv $font "${font%.*}"
done