
function fixmouse --description 'Fix the touchpad after wakeup';
    set mouseid (xinput --list | grep Touchpad | cut -d'=' -f2 | cut -d\t -f1)
    echo 'Reseting xinput for id '$mouseid
    xinput --disable $mouseid
    xinput --enable  $mouseid
end;