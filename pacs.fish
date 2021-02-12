# Defined in - @ line 1
function pacs --wraps='sudo pacman' --description 'alias pacs sudo pacman'
  sudo pacman $argv;
end
