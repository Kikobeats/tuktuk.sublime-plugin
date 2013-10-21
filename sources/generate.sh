#!/bin/bash

dir_icons="../snippets/icons"
icons_file="files/icons.txt"

dir_buttons="../snippets/buttons"
buttons_file="files/buttons.txt"

dir_grid="../snippets/grid"
grid_file="files/grid.txt"

dir_media="../snippets/media"
media_file="files/media.txt"

dir_nav="../snippets/nav"
nav_file="files/nav.txt"


echo -n "compiling icons..."
source generate-icons.sh $dir_icons $icons_file && echo "..done"

echo -n "compiling buttons..."
source generate-buttons.sh $dir_buttons $buttons_file && echo "..done"

echo -n "compiling media..."
source generate-media.sh $dir_media $media_file && echo "..done"

echo -n "compiling nav..."
source generate-navs.sh $dir_nav $nav_file && echo "..done"