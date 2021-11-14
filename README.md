# vim
vim setting

```bash
cd ~
git clone https://github.com/PoKeumCho/vim.git
cd vim
mv .vimrc ../
```
<br/>

<b>gruvbox</b> 
https://github.com/morhetz/gruvbox

```bash
git clone https://github.com/morhetz/gruvbox.git
sudo mv gruvbox/colors/gruvbox.vim /usr/share/vim/vim82/colors
rm -rf gruvbox
```
<br/>

<b>플러그인 설치</b>
```bash
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
git clone https://github.com/preservim/nerdtree.git nerdtree
```
