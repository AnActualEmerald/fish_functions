# Defined in - @ line 1
function emb --wraps='firefox --private-window' --description 'alias emb firefox --private-window'
  firefox --private-window $argv;
end
