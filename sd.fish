# Defined in - @ line 1
function sd --wraps='sudo systemctl' --description 'alias sd sudo systemctl'
  sudo systemctl $argv;
end
