# batch processing svg filenames
# from Noto Emoji source
# (https://github.com/googlei18n/noto-emoj)
# to match https://github.com/eosrei/twemoji-color-font

# This file may break if Google decides
# to rename their SVGs. Oh well.
#2345678901234567890123456789012345678901234567890

# Note: Here is an example Noto Emoji SVG filename: 
# "emoji_u00a9.svg"
# Here is a Noto Emoji ZWJ sequence SVG filename: 
# "emoji_u1f469_1f3fd_200d_1f692.svg"

# We want to turn those into something like this:
# "00a9.svg" and "1f469-1f3fe-200d-1f692.svg"
# Because we are borrowing eosrei's build process.
# And eosrei's build process is designed with
# that style of filenames in mind.

# There are lots of comments in this file,
# so you're encouraged to read them
# if you'd like to modify it.





# (Grabbing the filename of every SVG in this directory
# that begins with "emoji")
for i in $(\ls -d emoji*.svg)
do

# We are removing the beginning of every filename,
# i.e. we are removing "emoji_u"
# So we must trim the first 6 characters.
mv $i ${i:7}
echo "renaming from $i to ${i:7}"
done
# see: http://tldp.org/LDP/abs/html/string-manipulation.html
# subheading "Substring Extraction"


# (Grabbing the name of every SVG in this directory
# that contains an underscore in the filename)
for i in $(\ls -d *_*.svg)
do
mv $i ${i//_/-}
echo "renaming from $i to ${i//_/-}"
# remove underscores, replace with dashes.
# See: http://www.thegeekstuff.com/2010/07/bash-string-manipulation/
# "Replace all the matches" heading
done


# (Grabbing the name of every SVG in this directory
# that contains 2640 in the filename)
for i in $(\ls -d *2640*.svg)
do
mv $i ${i//-2640-/-2640-fe0f}
echo "renaming from $i to ${i//-2640-/-2640-fe0f}"
# remove -2640-, replace with -2640-fe0f.
# 2640 is "Female Sign" ♀️
# http://unicode.org/cldr/utility/character.jsp?a=2640
# fe0f is "Variation Selector 16".
# https://codepoints.net/U+FE0F
done


# (Grabbing the name of every SVG in this directory
# that contains 2642 in the filename)
for i in $(\ls -d *2640*.svg)
do
mv $i ${i//-2642-/-2642-fe0f}
echo "renaming from $i to ${i//-2642-/-2642-fe0f}"
# remove -2642-, replace with -2642-fe0f.
# 2642 is "Male Sign" ♂️
# http://unicode.org/cldr/utility/character.jsp?a=2642
# fe0f is "Variation Selector 16".
# https://codepoints.net/U+FE0F
done


# (Grabbing the name of every SVG in this directory
# that contains 1f3cc in the filename)
for i in $(\ls -d *1f3cc*.svg)
do
mv $i ${i//1f3cc-200d/1f3cc-fe0f-200d}
echo "renaming from $i to ${i//1f3cc-200d/1f3cc-fe0f-200d}"
# remove 1f3cc-200d, replace with 1f3cc-fe0f-200d.
# 1f3cc is "Golfer" 🏌️
# http://unicode.org/cldr/utility/character.jsp?a=1f3cc
# fe0f is "Variation Selector 16".
# https://codepoints.net/U+FE0F
# 200d is "Zero Width Joiner"
# http://unicode.org/cldr/utility/character.jsp?a=200d
done


# (Grabbing the name of every SVG in this directory
# that contains 1f3f3 in the filename)
for i in $(\ls -d *1f3f3*.svg)
do
mv $i ${i//1f3f3-200d/1f3f3-fe0f-200d}
echo "renaming from $i to ${i//1f3f3-200d/1f3f3-fe0f-200d}"
# remove 1f3f3-200d, replace with 1f3f3-fe0f-200d.
# 1f3f3 is "Waving White Flag" 🏳️
# http://unicode.org/cldr/utility/character.jsp?a=1f3f3
# fe0f is "Variation Selector 16".
# https://codepoints.net/U+FE0F
# 200d is "Zero Width Joiner"
# http://unicode.org/cldr/utility/character.jsp?a=200d
# Not yet implemented on the Noto SVG side, this is for the Rainbow Flag sequence. 🏳️‍🌈 🏳️‍🌈 🏳️‍🌈
done


# (Grabbing the name of every SVG in this directory
# that contains 2695 in the filename)
for i in $(\ls -d *2695*.svg)
do
mv $i ${i//200d-2695/200d-2695-fe0f}
echo "renaming from $i to ${i//200d-2695/200d-2695-fe0f}"
# remove 200d-2695, replace with 200d-2695-fe0f.
# 2695 is "Staff of Aesculapius" ⚕️
# http://unicode.org/cldr/utility/character.jsp?a=2695
# fe0f is "Variation Selector 16".
# https://codepoints.net/U+FE0F
# 200d is "Zero Width Joiner"
# http://unicode.org/cldr/utility/character.jsp?a=200d
done


# (Grabbing the name of every SVG in this directory
# that contains 2696 in the filename)
for i in $(\ls -d *2696*.svg)
do
mv $i ${i//200d-2696/200d-2696-fe0f}
echo "renaming from $i to ${i//200d-2696/200d-2696-fe0f}"
# remove 200d-2696, replace with 200d-2696-fe0f.
# 2696 is "Scales" ⚖️
# http://unicode.org/cldr/utility/character.jsp?a=2696
# fe0f is "Variation Selector 16".
# https://codepoints.net/U+FE0F
# 200d is "Zero Width Joiner"
# http://unicode.org/cldr/utility/character.jsp?a=200d
done


# (Grabbing the name of every SVG in this directory
# that contains 2708 in the filename)
for i in $(\ls -d *2708*.svg)
do
mv $i ${i//200d-2708/200d-2708-fe0f}
echo "renaming from $i to ${i//200d-2708/200d-2708-fe0f}"
# remove 200d-2708, replace with 200d-2708-fe0f.
# 2708 is "Airplane" ✈️
# http://unicode.org/cldr/utility/character.jsp?a=2708
# fe0f is "Variation Selector 16".
# https://codepoints.net/U+FE0F
# 200d is "Zero Width Joiner"
# http://unicode.org/cldr/utility/character.jsp?a=200d
done


##### The following one ("Heavy Black Heart")
##### Shouldn't be needed. It might actually 
##### break things at the moment. Uncomment if needed.
# (Grabbing the name of every SVG in this directory
# that contains 2764 in the filename)
##### for i in $(\ls -d *2764*.svg)
##### do
##### mv $i ${i//200d-2764/200d-2764-fe0f}
##### echo "renaming from $i to ${i//200d-2764/200d-2764-fe0f}"
# remove 200d-2764, replace with 200d-2764-fe0f.
# 2764 is "Heavy Black Heart" ❤️
# http://unicode.org/cldr/utility/character.jsp?a=2764
# fe0f is "Variation Selector 16".
# https://codepoints.net/U+FE0F
# 200d is "Zero Width Joiner"
# http://unicode.org/cldr/utility/character.jsp?a=200d
##### done


##### mv 1f3f4-200d-2620.svg 1f3f4-200d-2620-fe0f.svg
##### echo "renaming from 1f3f4-200d-2620.svg to 1f3f4-200d-2620-fe0f.svg (yarrr!)"
# rename 1f3f4-200d-2620.svg to 1f3f4-200d-2620-fe0f.svg.
# 1f3f4 is "Waving Black Flag" 🏴
# http://unicode.org/cldr/utility/character.jsp?a=if3f4
# 2620 is "Skull and Crossbones" ☠️
# http://unicode.org/cldr/utility/character.jsp?a=2620
# fe0f is "Variation Selector 16".
# https://codepoints.net/U+FE0F
# 200d is "Zero Width Joiner"
# http://unicode.org/cldr/utility/character.jsp?a=200d
# Not yet implemented on the Noto SVG side, this is for the Pirate Flag sequence.
# Pirate Flag is a non-standard Twitter Emoji sequence. http://emojipedia.org/pirate-flag/
# It is unlikely to be implemented in Noto Emoji, but you never know.
# https://www.youtube.com/watch?v=i8ju_10NkGY 🏴‍☠️ 🏴‍☠️ 🏴‍☠️
