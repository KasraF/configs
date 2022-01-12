function fish_greeting
set GREETINGS {"Hack the Gibson","Hack the Planet!","Wake up, Neo...","Never fear, I is here.","For the Glory of Mankind"}
echo $GREETINGS[(random 1 (count $GREETINGS))];
end
