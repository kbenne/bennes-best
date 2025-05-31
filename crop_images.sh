#!/bin/bash

# Directory containing the images
IMG_DIR="/home/kbenne/Development/bennes-best/img"

# Create a temporary directory for the original images
mkdir -p "$IMG_DIR/originals"

# Backup original images
cp "$IMG_DIR/beef.jpg" "$IMG_DIR/originals/beef.jpg"
cp "$IMG_DIR/pork.jpg" "$IMG_DIR/originals/pork.jpg"
cp "$IMG_DIR/chicken.jpg" "$IMG_DIR/originals/chicken.jpg"
cp "$IMG_DIR/eggs.jpg" "$IMG_DIR/originals/eggs.jpg"

# Process beef image - crop to 4:3 aspect ratio with focus on the animal
convert "$IMG_DIR/beef.jpg" -resize 800x600^ -gravity center -extent 800x600 "$IMG_DIR/beef.jpg"

# Process pork image - crop to 4:3 aspect ratio with focus on the animal
convert "$IMG_DIR/pork.jpg" -resize 800x600^ -gravity center -extent 800x600 "$IMG_DIR/pork.jpg"

# Process chicken image - crop to 4:3 aspect ratio with focus on the animal
convert "$IMG_DIR/chicken.jpg" -resize 800x600^ -gravity center -extent 800x600 "$IMG_DIR/chicken.jpg"

# Process eggs image - crop to 4:3 aspect ratio with focus on the eggs
convert "$IMG_DIR/eggs.jpg" -resize 800x600^ -gravity center -extent 800x600 "$IMG_DIR/eggs.jpg"

echo "Images cropped successfully. Original images backed up in $IMG_DIR/originals/"