touch neurotech_media-Retail.toc neurotech_media-Classic.toc

cat neurotech_media.toctemplate > neurotech_media.toctemplate.tmp

sed -i "s/ADDON_VERSION/$(git describe --abbrev=0)/g" neurotech_media.toctemplate.tmp

cat neurotech_media.toctemplate.tmp > neurotech_media-Retail.toc
cat neurotech_media.toctemplate.tmp > neurotech_media-Classic.toc

sed -i "s/INTERFACE_VERSION/$(cat ./versions/retail)/g" neurotech_media-Retail.toc
sed -i "s/INTERFACE_VERSION/$(cat ./versions/classic)/g" neurotech_media-Classic.toc

mkdir -p /h/games/World\ of\ Warcraft/_retail_/Interface/AddOns/neurotech_media/
mkdir -p /h/games/World\ of\ Warcraft/_classic_/Interface/AddOns/neurotech_media/

cp *.lua /h/games/World\ of\ Warcraft/_retail_/Interface/AddOns/neurotech_media/
cp -r fonts /h/games/World\ of\ Warcraft/_retail_/Interface/AddOns/neurotech_media/fonts
cp neurotech_media-Retail.toc /h/games/World\ of\ Warcraft/_retail_/Interface/AddOns/neurotech_media/

cp *.lua /h/games/World\ of\ Warcraft/_classic_/Interface/AddOns/neurotech_media/
cp -r fonts /h/games/World\ of\ Warcraft/_classic_/Interface/AddOns/neurotech_media/fonts
cp neurotech_media-Classic.toc /h/games/World\ of\ Warcraft/_classic_/Interface/AddOns/neurotech_media/
cp neurotech_media-Classic.toc /h/games/World\ of\ Warcraft/_classic_/Interface/AddOns/neurotech_media/neurotech_media-BCC.toc
cp neurotech_media-Classic.toc /h/games/World\ of\ Warcraft/_classic_/Interface/AddOns/neurotech_media/neurotech_media-WOTLKC.toc

rm neurotech_media.toctemplate.tmp
rm neurotech_media-Retail.toc
rm neurotech_media-Classic.toc