# Defined in - @ line 1
function veloren --wraps='flatpak run net.veloren.veloren' --description 'alias veloren flatpak run net.veloren.veloren'
  flatpak run net.veloren.veloren $argv;
end
