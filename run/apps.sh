cd images
for file in *
do
	cwebp "$file" -o "${file%.png}.webp"
	#cwebp -q 80 "$file" -o "${file%.png}.webp"
done