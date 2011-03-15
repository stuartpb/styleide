local fore = {}
local back = {}
local font = {}
local size = {}
local attr = {}
local ui = {}
local alpha = {}

--LfW has this stupid "stdstyle" that makes
--SciTE's already annoying granular "colour" and "font"
--base style hierarchies even more annoying to work with
--(because with stdstyle you can't only override part
--of a style) that it uses inconsistently.
--They also define every color 4 times for no good reason,
--and sometimes the numbers are different with no explanation.
--I guess what I'm trying to say is I hate LfW's SciTE configuration.

--NOTE: Half color values vary in the original LFW SciTE scheme
--depending on whether they used a stdstyle (80) or colour (7F).
--As colour is the actual approach used by modern SciTE,
--we use 7F here.

local black = "#000000"
local white = "#FFFFFF"
local yellow= "#FFFF00"
local halfgrey= "#7F7F7F"
local blue = "#0000FF"
local darkblue = "#00007F"
local red = "#FF0000"
local halfcyan = "#007F7F"

fore.base = black
back.base = white
font.base = "Consolas"
size.base = 8

--keywords
fore.keyword = darkblue
attr.keyword = {"bold"}

--identifiers
--pretty much just treat identifiers normally

--numbers
fore.number = darkcyan --other number sets are #707 in LfW's stdstyles


--Vaguely UI-ish stuff-------------------------------------------------------

--syntax errors
fore.error = yellow
back.error = "#CC0055"

--the foreground of whitespace is only visible when "view whitespace" is on
--back.whitespace = back.base
fore.whitespace = halfgrey

--line numbers
fore.linenumbers = "#000077"
back.linenumbers = "#CCCCCC"

--brace matching
fore.bracematch = blue
attr.bracematch = {"bold"}
fore.bracemismatch = red
attr.bracemismatch = {"bold"}

--pretty much SciTE-specific stuff-------------------------------------------

--all these should really be under UI but whatever
fore.indentguides = black
fore.caret = black --not SciTE specific but whatever
back.caretline = "#9999BB"
alpha.caretline = .25
fore.selection = "#003000"
back.selection = "bbbbbb"


--there's this "control characters" field that's pretty much useless
--assumedly it's for the font used to render control characters
