echo "Building neurotech_media and installing to WoW directory."

echo "Creating TOC file."
touch neurotech_media.toc.tmp
cat neurotech_media.toc >neurotech_media.toc.tmp
sed -i "s/@project-version@/$(git describe --abbrev=0)/g" neurotech_media.toc.tmp

echo "Copying assets to WoW Classic installation directory."
mkdir -p /f/games/World\ of\ Warcraft/_classic_/Interface/AddOns/neurotech_media/
cp neurotech_media.toc.tmp /f/games/World\ of\ Warcraft/_classic_/Interface/AddOns/neurotech_media/neurotech_media.toc
cp *.lua /f/games/World\ of\ Warcraft/_classic_/Interface/AddOns/neurotech_media/
cp -r media/ /f/games/World\ of\ Warcraft/_classic_/Interface/AddOns/neurotech_media/

echo "Copying assets to WoW Retail installation directory."
mkdir -p /f/games/World\ of\ Warcraft/_retail_/Interface/AddOns/neurotech_media/
cp neurotech_media.toc.tmp /f/games/World\ of\ Warcraft/_retail_/Interface/AddOns/neurotech_media/neurotech_media.toc
cp *.lua /f/games/World\ of\ Warcraft/_retail_/Interface/AddOns/neurotech_media/
cp -r media/ /f/games/World\ of\ Warcraft/_retail_/Interface/AddOns/neurotech_media/

echo "Cleaning up."
rm neurotech_media.toc.tmp

echo "Complete."
