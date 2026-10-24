

combined/glove80.uf2: config/glove80.keymap
	nix-build config -o combined


build: combined/glove80.uf2
	ls -alh combined/glove80.uf2

flash_all: left_hand_flash righ_hand_flash

left_hand_flash: build
	udisksctl mount -b /dev/disk/by-label/GLV80LHBOOT
	cp combined/glove80.uf2 /run/media/${USER}/GLV80LHBOOT/CURRENT.UF2

righ_hand_flash: build
	udisksctl mount -b /dev/disk/by-label/GLV80RHBOOT
	cp combined/glove80.uf2 /run/media/${USER}/GLV80RHBOOT/CURRENT.UF2

