# Defined in - @ line 1
function pam --wraps=pamac --description 'alias pam pamac'
  pamac  $argv;
end
