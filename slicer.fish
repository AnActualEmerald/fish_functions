# Defined in - @ line 1
function slicer --wraps='perl ~/build/slic3r/slic3r.pl &*' --description 'alias slicer perl ~/build/slic3r/slic3r.pl &*'
  perl ~/build/slic3r/slic3r.pl &* $argv;
end
