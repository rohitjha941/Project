function near_value = nv(numToRound,p,q)
multiple = p/q;
     near_value = ceil(numToRound/multiple);
     near_value = near_value*multiple;
end