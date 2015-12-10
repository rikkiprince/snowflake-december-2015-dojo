= snowflake generator =

Written in Processing (https://processing.org/), check it out.

Spinning snowflake.

Draws a line, translates part way up it, turns 90˚ and recurses to repeat. This worked in 1 direction, so we looped 6 times, rotated 60˚ between each and redrew.

Originally we were just splitting the line in half, but then decided to draw twice along the length of the line. Then randomly adjusted how far along that line it starts each time it runs, so a unique snowflake is created every time :-)

Makes liberal use of pushMatrix and popMatrix to contain the rotations and translations to the relevant lines.

Authors:
- Rikki Prince (rprince)
- Tom Blount (landric)