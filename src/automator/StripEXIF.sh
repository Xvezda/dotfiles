for file
do
	/usr/local/bin/mogrify -strip "$file"
done
osascript -e 'display alert "Stripping EXIF finished!"'
