build:
	cp -r ./vice ./vice-build
	cd ./vice-build
	./autogen.sh
	./configure --enable-native-gtk3ui
	make
	./src/x64sc -directory ./data

run:
	./vice-build/src/x64sc -directory ./vice-build/data

better:
	cp -r ./vice ./vice-build
	cd ./vice-build
	./autogen.sh
	./configure --enable-arch=native --with-resid --enable-native-gtk3ui \
    --enable-ethernet --with-pulse --with-alsa --enable-cpuhistory \
    --enable-vte
	make
	./src/x64sc -directory ./data
