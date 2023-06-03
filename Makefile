

combined/glove80.uf2: config/glove80.keymap
	nix-build config -o combined


build: combined/glove80.uf2

left_hand_flash: combined/glove80.uf2
	cp combined/glove80.uf2 /run/media/tgermain/GLV80LHBOOT/

righ_hand_flash: combined/glove80.uf2
	cp combined/glove80.uf2 /run/media/tgermain/GLV80RHBOOT/

flash_all: left_hand_flash righ_hand_flash
