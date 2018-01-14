# tmux-config
Config file for the tmux.
## Installation
clone into ~/.tmux/
```bash 
cd ~/.tmux
make install
```
or
```bash 
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf
```
## Activate the virtual environment at startup (~/.bashrc)
It is not needed if the installation was done through "make install".
```bash
if [ -n "$VIRTUAL_ENV" ]; then
    . "$VIRTUAL_ENV/bin/activate"
fi
```
