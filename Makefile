.PHONY: install uninstall

install:
	install -d /usr/local/share/release-soundcard
	install -d /usr/local/bin
	install silence.wav /usr/local/share/release-soundcard/
	install release-soundcard.sh /usr/local/bin/release-soundcard

uninstall:
	rm /usr/local/share/release-soundcard/silence.wav
	rmdir /usr/local/share/release-soundcard || echo "leaving dir /usr/local/share/release-soundcard"
	rm /usr/local/bin/release-soundcard
	rmdir /usr/local/bin || echo "leaving dir /usr/local/bin"
