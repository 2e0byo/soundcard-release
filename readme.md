# Script to wrest control of the soundcard from the cold, lifeless hands of mopidy

## Background

My music server is a little embedded computer running debian.  Music is
generally provided by Mopidy, which opens the soundcard directly (via
gstreamer).  Pulseaudio is not installed, and no software resampling is done.

I also have `shariport-sync` installed, which pretends to be an airplay host, so
apple devices on the network can send music to the system.  This only works if
mopidy has released the soundcard.  Mopidy releases the soundcard when not
playing, but not *immediately*.  This script endeavours to get control of it and
sit around until it has.

## Adaption

You would almost certainly need to adapt this.  Some options would be:

- find some way of finding out if the soundcard is free without trying to play
  something (might require writing a program to try to acquire it, though)
- use json-rpc rather than the mpd interface to control mopidy.  This is planned
  whenever I get round to upgrading the server.  See
  [simple-mopdiy-json-cli](https://github.com/2e0byo/simple-mopidy-json-cli) for
  an example of how easy this is.
