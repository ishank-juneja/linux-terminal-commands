# The Convert Command on Linux

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
- Convert between compressed image file formats 
`convert foo.jpg bar.png`
	- Or vice-versa