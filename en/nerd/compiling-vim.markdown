hg clone vim
./configure --enable-rubyinterp=yes --enable-pythoninterp=yes --enable-perlinterp=yes --with-features=huge --prefix=/usr
make
test
make install
