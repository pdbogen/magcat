copy:
	cp magcat.py /media/sda1/code.py
	sync

libraries:
	for library in adafruit_portalbase adafruit_magtag adafruit_bitmap_font adafruit_display_text; do \
		rsync -P -r adafruit-circuitpython-bundle-6.x-mpy-20201224/lib/$$library /media/sda1/lib/$$library; \
	done
	cp adafruit-circuitpython-bundle-6.x-mpy-20201224/lib/adafruit_requests.mpy /media/sda1/lib/
	sync
