#!/bin/bash
for i in {1..5}
do
	pdftk Correlated-AoI-Graphic-Animation.pdf cat $i output system-$i.pdf		
done

