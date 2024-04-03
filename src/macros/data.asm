MACRO dbw b, w
    .db b
    .dw w
ENDM

MACRO big_dw word
    .dh word
    .dl word
ENDM
