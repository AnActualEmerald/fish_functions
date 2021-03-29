# Defined in - @ line 1
function config-fish --wraps='nvim ~/.config/fish/config.fish' --description 'alias config-fish nvim ~/.config/fish/config.fish'
  nvim ~/.config/fish/config.fish $argv;
end
