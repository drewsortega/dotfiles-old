gpg --recv 93BDB53CD4EBC740
gpg --recv C3126D3B4AE55E93
gpg --recv BBE43771487328A9

yaourt -S --noconfirm mingw-w64-binutils
yaourt -S --noconfirm mingw-w64-headers
yaourt -S --noconfirm mingw-w64-gcc-base
yaourt -S --noconfirm mingw-w64-crt
#uninstall winpthreads conflicting package without depedency check in front of winpthreads installation
#to avoid [y/N] question replacing it after building during installation of winpthreads
sudo pacman -Rdd --noconfirm mingw-w64-headers-bootstrap
yaourt -S --noconfirm mingw-w64-winpthreads
#same hackity hack again, here mingw-w64-gcc conflicts against mingw-w64-gcc-base
sudo pacman -Rdd --noconfirm mingw-w64-gcc-base
yaourt -S --noconfirm mingw-w64-gcc
