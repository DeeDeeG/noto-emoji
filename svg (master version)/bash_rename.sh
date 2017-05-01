# batch processing svg filenames 
# from Noto Emoji source 
# (https://github.com/googlei18n/noto-emoj)
# to match https://github.com/eosrei/twemoji-color-font

# This file may break if Google decides
# to rename their SVGs. Oh well.
#2345678901234567890123456789012345678901234567890

# Note: this is an example Noto Emoji SVG filename: "emoji_u00a9.svg"
# Also note a Noto ZWJ sequence filename: "emoji_u1f469_1f3fd_200d_1f692.svg"

# We want to turn those into something like this:
# "00a9.svg" and "1f469-1f3fe-200d-1f692.svg"
# Because we are borrowing eosrei's build process.
# And eosrei's build process is designed with
# those styles of filenames in mind.

# Grab the filename of every SVG in this directory
# that begins with "emoji")
for i in $(\ls -d emoji*.svg)
do
# We have set "i" to be each SVG's filename (in turn) 
# in this directory

# We are removing the beginning of every filename,
# i.e. we are removing "emoji_u"
# So we must trim the first 6 characters.
mv $i ${i:6}
done
# see: http://tldp.org/LDP/abs/html/string-manipulation.html
# subheading "Substring Extraction"
