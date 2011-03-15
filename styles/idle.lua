--IDLE default colors

local black ="#000000" --normal txt
local white="#ffffff" --background, fore for hits
local blue="#0000ff" --definitions, stdout
local gray = "#bebebe" --selection
local red = "#ff0000" --stderr
local kworange = "#ff7700"
local stringgreen = "#00aa00"
local commentred = "#dd0000"
local errred ="#ff7777"
local bipurple = "#900090" --builtins
local conmaroon = "#770000" --"console", which I'm mapping to output

local fore={}
local back={}

fore.normal = black
back.normal = white
fore.definition = blue --if I could rewrite the Lua parser I would have this style apply to everything after a local (or "local function")
fore.keyword = kworange
fore.hit = white --possibly just define these
back.hit = black --in terms of inverted normal (fore is back and back is fore)
fore.stdout = blue
--break-background = #ffff55 -- no idea what break is. Breakpoint line?
fore.comment = commentred
back.selection = gray
fore.output = conmaroon
fore.builtin = bipurple
fore.string = stringgreen
fore.stderr = red
back.error = erred --I'm... iffy on this being a style, but for now it's OK
fore.caret = black

--undefined colors should be output with their normal equivalents
--(I cut a lot of white back definitions that were in the config file)

return {fore=fore,back=back,name = "IDLE Classic"}
