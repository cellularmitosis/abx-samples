#!/bin/bash

set -e

# extract a 45-second clip starting at 2:17
ffmpeg -ss 137 -t 45 -i 'Strangelove (1987).flac' source.wav

# encode the mp3's, then decode back to wav.

lame -b 320 -m s --lowpass -1 source.wav 320.mp3
ffmpeg -i 320.mp3 320.wav
rm 320.mp3

lame -b 256 -m s --lowpass -1 source.wav 256.mp3
ffmpeg -i 256.mp3 256.wav
rm 256.mp3

lame -b 192 -m s --lowpass -1 source.wav 192.mp3
ffmpeg -i 192.mp3 192.wav
rm 192.mp3

lame -b 160 -m s --lowpass -1 source.wav 160.mp3
ffmpeg -i 160.mp3 160.wav
rm 160.mp3

lame -b 128 -m s --lowpass -1 source.wav 128.mp3
ffmpeg -i 128.mp3 128.wav
rm 128.mp3

lame -b 96 -m s --lowpass -1 source.wav 96.mp3
ffmpeg -i 96.mp3 96.wav
rm 96.mp3

# rename the files
./scramble.sh
