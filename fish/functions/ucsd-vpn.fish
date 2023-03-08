#!/usr/bin/env fish

function ucsd-vpn;
    if test (count $argv) -ne 1;
        echo "Expected 1 argument, got " (count $argv);
        return 1;
    end;
    if test $argv[1] = 'up';
        eval (op signin --account my.1password.com);
        echo '2-Step Secured - allthruucsd'\n(op item get 'UCSD Active Directory' --fields username)\n(op item get 'UCSD Active Directory' --fields password) | nmcli c up UCSD-VPN --ask
    else if test $argv[1] = 'down';
        nmcli c down UCSD-VPN;
    else;
        echo "argument $argv[1] not recognized. Valid arguments: up, down";
    end;
end;
