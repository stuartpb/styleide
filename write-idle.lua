--Export IDLE color properties (unfinished)

local theme = require"styles.idle"

--cursor is black... can't remember how I was defining that

--undefined colors should be output with their base equivalents
--(I cut a lot of white back definitions that were in the config file)

local hltypes={
  "normal", --Normal Text
  "keyword", --Python Keywords
  "definition", --Python Definitions
  "builtin", --Python Builtins
  "comment", --Python Comments
  "string", --Python Strings
  "hilite", --Selected Text
  "hit", --Found Text
  --"cursor", --Cursor (not included because it only has a fore- handled separately)
  "error", --Error Text
  "console", --Shell Normal Text
  "stdout", --Shell Stdout Text
  "stderr", --Shell Stderr Text
  "break", --does not appear in IDLE Preferences configuration, possibly deprecated
}

--Append to ~/.idlerc/config-highlight.cfg

local cfg=io.open("~/.idlerc/config-highlight.cfg","a")

--output the theme name inside [square brackets]
cfg:write('\n[',theme.name,']\n')
--Some text inside MAY crash IDLE (possibly Unicode),
--but IDLE doesn't stop you from entering anything itself
--and escapes nothing (even right braces)

--output name of hltype .. hyphen .. "foreground" or "background" .. " = " .. color, new line
--for hltype do
--cfg:write(hltype,'-foreground=',theme.fore[styletype],'\n')
--cfg:write(hltype,'-background=',theme.back[styletype],'\n')
--end
--cfg:write('cursor-foreground=',theme,'\n')
