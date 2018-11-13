cd ~/Movies

# get file extension
EXT=${1##*.}
OUTPUT="output.$EXT"

# generate files list
for arg
do
    echo "file '$arg'" >> mylist.txt
done

# merge into one file
/usr/local/bin/ffmpeg -f concat -safe 0 -i mylist.txt -c copy $OUTPUT
rm mylist.txt
