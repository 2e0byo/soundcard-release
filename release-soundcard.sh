#!/usr/bin/bash
# Script to endeavour to wrest control of the soundcard from the cold, lifeless
# hands of mopidy.  Not guaranteed to work.

SILENCE=/usr/local/share/release-soundcard/silence.wav
mpc stop
sleep 0.1

let i=0
while [ $(aplay $SILENCE) ]; do
    mpc play
    sleep 0.1
    mpc stop
    sleep 0.1
    [ $i -lt 7 ] || exit 1
    let i++
done

exit 0



