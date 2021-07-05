# Defined via `source`
function restart --wraps='doas reboot now' --description 'alias restart doas reboot now'
  doas reboot now $argv; 
end
