# Defined in - @ line 1
function config-alacritty --wraps='vim ~/.config/alacritty/alacritty.yml' --description 'alias config-alacritty vim ~/.config/alacritty/alacritty.yml'
  nvim ~/.config/alacritty/alacritty.yml $argv;
end
