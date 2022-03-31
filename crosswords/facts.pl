# A drawing of the puzzle 6x4. 
# "---" represents a blocked square.



# l1  | l2  | l3  | l4  | l5  | ---
# l6  | --- | l7  | --- | l8  | ---
# l9  | l10 | l11 | l12 | l13 | l14
# l15 | --- | --- | --- | l16 | ---



word(d,o,g).
word(f,o,u,r).
word(b,a,k,e,r).
word(p,r,o,l,o,g).
word(r,u,n).
word(1,o,s,t).
word(f,o,r,u,m).
word(v,a,n,i,s,h).
word(t,o,p).
word(m,e,s,s).
word(g,r,e,e,n).
word(w,o,n,d,e,r).
word(f,i,v,e).
word(u,n,i,t).
word(s,u,p,e,r).
word(y,e,l,l,o,w).
solution( Ll,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,L15,L16) :-
 word(L1,L2,L3,L4,L5),
 word(L9,L10,L11,L12,L13,L14),
 word(L1,L6,L9,L15),
 word(L3,L7,L11),
 word(L5,L8,L13,L16).
