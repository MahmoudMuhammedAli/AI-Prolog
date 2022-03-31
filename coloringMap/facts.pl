# all possible compinations between the colors green, blue ,red ,and yellow.
compine( red, green).
compine( green, red).
compine( blue, red). 
compine( yellow, red).
compine( red, blue). 
compine( green, blue).
compine( blue, green).
compine( yellow, green). 
compine( red, yellow).
compine( green, yellow).
compine( blue, yellow).
compine( yellow, blue). 

# taking in 10 countries and the sea. Keep in mind that a country neear the sea shouldn't be colored blue.
find_compinations( IT, SI, HR, CH, AT, HU, DE, SK, CZ, PL, SEA) :-
 SEA = blue, 
 compine( IT, CH),
 compine( IT, AT), 
 compine( IT, SI), 
 compine( IT, SEA), 
 compine( SI, AT), 
 compine( SI, HR), 
 compine( SI, HU), 
 compine( SI, SEA), 
 compine( HR, HU), 
 compine( HR, SEA), 
 compine( AT, CH), 
 compine( AT, DE), 
 compine( AT, HU), 
 compine( AT, SK), 
 compine( AT, CZ), 
 compine( CH, DE), 
 compine( HU, SK), 
 compine( DE, SK), 
 compine( DE, CZ), 
 compine( DE, PL), 
 compine( SK, CZ), 
 compine( SK, PL), 
 compine( CZ, PL). 