# Defined in - @ line 1
function config-i3 --wraps='nvim ~/.coifig/i3/config' --wraps='nvim ~/.config/i3/config' --description 'alias config-i3 nvim ~/.config/i3/config'
  nvim ~/.config/i3/config $argv;
end
