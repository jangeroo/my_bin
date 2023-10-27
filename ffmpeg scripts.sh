m3u8_to_mp4 () {
  ffmpeg -i "$1" -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 $2.mp4
}

# for converting mp3 to m4a/b
ffmpeg -i "input.mp3" -map_metadata 0 -c:v copy -c:a aac -ab 64k "output.m4a/b"

# for files in current directory
for file in *.mp3; do ffmpeg -i "$file" -map_metadata 0 -c:v copy -c:a aac -ab 64k "${file:s/mp3/m4b}"; rm -f $file; done

# for files in nested directories
for dir in *; for file in $dir/*.mp3; do ffmpeg -i "$file" -map_metadata 0 -c:v copy -c:a aac -ab 64k "${file:s/mp3/m4b}"; rm -f $file; done

##############################


for file in *; do ffmpeg -i "$file" -map_metadata 0 -c:v copy -c:a aac -ab 64k "${file:s/m4b/-new.m4b}"; done

for dir in *; for file in $dir/*.m4b; do ffmpeg -i "$file" -map_metadata 0 -c:v copy -c:a aac -ab 64k "${file:s/.m4b/-new.m4b}"; rm -f $file; done



################
# for video compression... CRF 30 seems to be a good limit for very significant size reduction but acceptable quality...
# Maybe only when starting with an acceptable quality though... E.g. the gardening video: 555mb > 186mb.
# This was only 351mb with CRF 24, and 87mb with CRF 40, but significant artifacting

ffmpeg -i "input.ext" -vcodec libx265 -crf 30 -acodec aac -pix_fmt yuv420p "output.ext"
# -pix_fmt yuv420p << is optional but recommended. found this while investigating why videos encoded with ffmpeg don't play nicely with QuickTime


###############
# for changing the aspect ration of a video if it's too narrow or too wide
ffmpeg -i <INPUT.EXT> -aspect <WIDTH>:<HEIGHT> -c copy <OUTPUT.EXT>

# e.g.
ffmpeg -i in.mp4 -aspect 720:1080 -c copy out.mp4

for file in *.mp3; do ffmpeg -i "$file" -aspect 720:1080 -c copy "${file:s/mp4/mp4b}"; done


###############
# for rotating a video
# from https://stackoverflow.com/a/9570992
ffmpeg -i <INPUT.EXT> -vf "transpose=<OPTION>[,transpose=<ADDITIONAL_OPTION>]" -c:a copy <OUTPUT.EXT>

ffmpeg -i in.mp4 -vf "transpose=1,transpose=1" -c:a copy out.mp4
# transpose options:
# 0 = 90° counterclockwise and vertical flip (default)
# 1 = 90° clockwise
# 2 = 90° counterclockwise
# 3 = 90° clockwise and vertical flip

# for cropping a video
ffmpeg -i in.mp4 -filter:v "crop=out_w:out_h:x:y" out.mp4
ffmpeg -i in.mp4 -filter:v "crop=2000:1000:0:0" out.mp4
# Where the options are as follows:

# out_w is the width of the output rectangle
# out_h is the height of the output rectangle
# x and y specify the top left corner of the output rectangle (coordinates start at (0,0) in the top left corner of the input)
