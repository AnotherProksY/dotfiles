#!/bin/bash

# ------------------------------

# Current user _(used in paths)_
USER="k.fazilov"

# External drive basic path
DEST="/Volumes/My Data/"

# ------------------------------

# Sources
SrcArray=(
    "/Users/$USER/Library/Mobile Documents/com~apple~CloudDocs/"
    "/Users/$USER/Documents/"
    "/Users/$USER/Desktop/"
)
# "/Users/$USER/Dev/"

# Destinations
DestArray=(
    "$DEST"
    "${DEST}Documents/"
    "${DEST}Desktop/"
)
# "${DEST}Dev/"

# Exclude
params=(
    --exclude='.DS_Store'
    --exclude='.Trash/'
    --exclude='.Trashes/'
    --exclude='.TemporaryItems/'
    --exclude='.Spotlight-V100/'
    --exclude='.DocumentRevisions-V100/'
    --exclude='Documents/'
    --exclude='Desktop/'
    --exclude='Passwords.csv.asc'
)

# Syncing process
echo ""
if [ "${#SrcArray[@]}" -eq "${#DestArray[@]}" ]; then
    for i in "${!SrcArray[@]}"; do
        echo "Starting Rsync #$((i+1))"
        echo ""

        #TODO
        #
        # Photo library path
        # /Users/$USER/Pictures/Photo\ Library/originals/

        rsync --verbose --recursive --delete-before --whole-file --times "${params[@]}" "${SrcArray[$i]}" "${DestArray[$i]}"
        echo ""
        echo "Done!"
        echo ""
    done
else
    echo "SrcArray & DestArray have different sizes"
fi
