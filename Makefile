build:
	cp -r ./vice ./vice-build
	cd ./vice-build
	./autogen.sh
	./configure --enable-native-gtk3ui
	make
	./src/x64sc -directory ./data