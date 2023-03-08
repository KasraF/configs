function fish_greeting
set GREETINGS {"Hack the Gibson","Hack the Planet!","Never fear, I is here.","Woah! This isn't woodshop class?!", "We have no names man, no names. We are nameless!", "Look, you wanna be elite? You gotta do a righteous hack.", "A wakeup call from the Nintendo generation..."}
echo $GREETINGS[(random 1 (count $GREETINGS))];
end
