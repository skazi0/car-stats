GITVER := $(shell git describe HEAD | tr '-' '+')

all:
	cp dist/DEBIAN/control.templ dist/DEBIAN/control
	sed -i 's/%VERSION%/$(GITVER)/' dist/DEBIAN/control
	dpkg-deb --build dist
	mv dist.deb car-stats-$(GITVER)-1_all.deb
