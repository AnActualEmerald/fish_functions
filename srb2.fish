# Defined in - @ line 1
function srb2 --wraps='flatpak run org.srb2.srb2' --description 'alias srb2 flatpak run org.srb2.srb2'
  flatpak run org.srb2.SRB2 $argv;
end
