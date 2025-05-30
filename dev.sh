export CLASSIC_PATH="/mnt/c/Program Files (x86)/World of Warcraft/_classic_/Interface/AddOns/neurotech_media"
export RETAIL_PATH="/mnt/c/Program Files (x86)/World of Warcraft/_retail_/Interface/AddOns/neurotech_media"

directories=(
    "$CLASSIC_PATH"
    "$RETAIL_PATH"
)

echo "Building neurotech_media and installing to WoW directories."

for dir in "${directories[@]}"; do
  touch neurotech_media.toc.tmp

  cat neurotech_media.toc > neurotech_media.toc.tmp

  sed -i "s/@project-version@/$(git describe --abbrev=0)/g" neurotech_media.toc.tmp

  mkdir -p "$dir"

  cp -r *.lua *.ogg "$dir"

  cp neurotech_media.toc.tmp "$dir"/neurotech_media.toc

  rm neurotech_media.toc.tmp
done

echo "Complete."
