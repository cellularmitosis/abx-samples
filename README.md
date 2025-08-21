## WAV samples for an constant birate MP3 A/B/X test

The following are an original source wav file
and copies of that file encoded at various mp3 bitrates,
then decoded back to wav.

See if you can guess which bitrate each file uses.
The bitrates used are 320, 256, 192, 160, 128, and 96.

Note: I have forced certain settings in order to avoid any non-bitrate "tells" which might
hint at what bitrate was being used.
Specifically, I have forced true-stereo and disabled the lowpass filter, e.g.:

```
lame -b 256 -m s --lowpass -1 source.wav 256.mp3
```

In typical practice you wouldn't do this, as it can lower the audio quality for a given bitrate.

(Well, in typical practice you'd be using variable bitrate anyway...)

In a few days I'll reveal the map from filename to bitrate.

The sample is a 45-second clip of Strangelove by Depeche Mode.
