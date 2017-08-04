# tmux-config
Config file for the tmux.
## Installation
clone into ~/.tmux/
```bash 
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf
```
## Activate the virtual environment at startup (~/.bashrc)
```bash
if [ -n "$VIRTUAL_ENV" ]; then
    . "$VIRTUAL_ENV/bin/activate"
fi
```
