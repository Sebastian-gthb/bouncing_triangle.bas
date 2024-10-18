SCREEN 13
k = 32
mk = 1
x1 = 200
y1 = 30
x2 = 100
y2 = 150
x3 = 30
y3 = 50
mx1 = 1
my1 = .5
mx2 = -.5
my2 = 1
mx3 = .5
my3 = -.5
snd = 0
PLAY "T180"
PLAY "L64"
PLAY "O0"
DO
Esc$ = INKEY$
c = c + 1
IF c = 10 THEN k = k + mk: c = 0
IF k = 100 THEN mk = -1
IF k = 32 THEN mk = 1
x1 = x1 + mx1
y1 = y1 + my1
x2 = x2 + mx2
y2 = y2 + my2
x3 = x3 + mx3
y3 = y3 + my3
LINE (x1, y1)-(x2, y2), k
LINE (x2, y2)-(x3, y3), k
LINE (x3, y3)-(x1, y1), k
LINE (a1, b1)-(a2, b2), 0
LINE (a2, b2)-(a3, b3), 0
LINE (a3, b3)-(a1, b1), 0
a1 = x1
a2 = x2
a3 = x3
b1 = y1
b2 = y2
b3 = y3
IF x1 < 0 THEN mx1 = 1: IF snd = 1 THEN PLAY "g"
IF x2 < 0 THEN mx2 = .5: IF snd = 1 THEN PLAY "g"
IF x3 < 0 THEN mx3 = .5: IF snd = 1 THEN PLAY "g"
IF y1 < 0 THEN my1 = .5: IF snd = 1 THEN PLAY "g"
IF y2 < 0 THEN my2 = 1: IF snd = 1 THEN PLAY "g"
IF y3 < 0 THEN my3 = .5: IF snd = 1 THEN PLAY "g"
IF x1 > 319 THEN mx1 = -1: IF snd = 1 THEN PLAY "g"
IF x2 > 319 THEN mx2 = -.5: IF snd = 1 THEN PLAY "g"
IF x3 > 319 THEN mx3 = -.5: IF snd = 1 THEN PLAY "g"
IF y1 > 199 THEN my1 = -.5: IF snd = 1 THEN PLAY "g"
IF y2 > 199 THEN my2 = -1: IF snd = 1 THEN PLAY "g"
IF y3 > 199 THEN my3 = -.5: IF snd = 1 THEN PLAY "g"
IF Esc$ = "s" AND snd = 0 THEN snd = 1: GOTO 10
IF Esc$ = "s" AND snd = 1 THEN snd = 0: GOTO 10
10
LOOP UNTIL Esc$ = CHR$(27)
SCREEN 9
SCREEN 0
END

