#!/bin/sh

res=48x48

mkdir -p dist/cursors
mkdir -p $res

for im in $(find haiku-icons/svg/cursors -name *.svg)
do
  magick -background none -size $res $im "$res/$(basename $(echo $im | sed "s/\.svg/\.png/g"))"
done

for cur in *.cursor
do
  xcursorgen $cur "dist/cursors/${cur%%.cursor}"
done

ln -sf default $PWD/dist/cursors/left_ptr
ln -sf text $PWD/dist/cursors/xterm
ln -sf pointer $PWD/dist/cursors/hand2
ln -sf help $PWD/dist/cursors/question_arrow
ln -sf progress $PWD/dist/cursors/wait
ln -sf wait $PWD/dist/cursors/watch
ln -sf not-allowed $PWD/dist/cursors/no-drop
ln -sf e-resize $PWD/dist/cursors/right_side
ln -sf ne-resize $PWD/dist/cursors/top_right_corner
ln -sf nw-resize $PWD/dist/cursors/top_left_corner
ln -sf n-resize $PWD/dist/cursors/top_side
ln -sf se-resize $PWD/dist/cursors/bottom_right_corner
ln -sf sw-resize $PWD/dist/cursors/bottom_left_corner
ln -sf s-resize $PWD/dist/cursors/bottom_side
ln -sf w-resize $PWD/dist/cursors/left_side
ln -sf crosshair $PWD/dist/cursors/cross_reverse
ln -sf crosshair $PWD/dist/cursors/cross
ln -sf crosshair $PWD/dist/cursors/diamond_cross
ln -sf crosshair $PWD/dist/cursors/tcross
ln -sf grab $PWD/dist/cursors/hand1
ln -sf col-resize $PWD/dist/cursors/ew-resize
ln -sf ew-resize $PWD/dist/cursors/sb_h_double_arrow
ln -sf row-resize $PWD/dist/cursors/ns-resize
ln -sf ns-resize $PWD/dist/cursors/sb_v_double_arrow
ln -sf nesw-resize $PWD/dist/cursors/fd_double_arrow
ln -sf nwse-resize $PWD/dist/cursors/bd_double_arrow

cp index.theme dist/
