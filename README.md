# tgermain MoErgo Glove80 Custom Configuration for ZMK

## Build

To build layout `nix-build config -o combined`

This will generate the  `combined/glove80.uf2` file.

You can then flash this file in your keyboard:
- put your keyboard halve in bootloader mode. It will be recognize as a storage device by your OS
- move the file in the storage device. No need to rename it.


## Dependencies
This repo uses:
- nix to build the repo
- The [official Glove80 ZMK Distribution](https://github.com/moergo-sc/zmk). Repositiory for ZMK firmware customized for Glove80.


Glove80 zmk disctribution is imported as git-submodules. See [here](https://devconnected.com/how-to-add-and-update-git-submodules/) for a quick doc.

Initial pull: `git submodule update --init --recursive`

Update submodules: `git submodule update --remote --merge`
