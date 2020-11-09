# The Convert Command on Linux
The command is part of te ImageMagick Toolkit<br>
Docs - [Linux Convert Tool](https://linux.die.net/man/1/convert)

### Append together images
- Horizontaly

`convert +append *.png out.png`

- Vertically 

`convert -append *.png out.png`

- Compress all images in current working directory
```
mkdir photos-Optimized;
for photos in *.jpg;
	do convert -verbose $photos -quality 85% -resize 1600x900 ./photos-Optimized/$photos-Optimized.jpg; 
done
```
### Convert between compressed image file formats 
- Or vice-versa

`convert foo.jpg bar.png`

- Special treatment required for converting from `.svg` format



### Change the size of an image
- Fixed aspect ratio
`convert myfigure.png -resize 200x100 myfigure.jpg`

- Fixed Down-scaling
`convert -resize 50% myfigure.png myfigure.jpg`

- One dimension of fixed number of pixels
`convert i-1_reg_plot.png -resize x600 out.png`

`convert i-1_reg_plot.png -resize 600x out.png`


### Convert PDF to compressed image formats like png, jpg
- For the full document:
`convert -density 150 input.pdf -quality 90 output.png`

- For a single page:
`convert -density 150 input.pdf[666] -quality 90 output.png`


