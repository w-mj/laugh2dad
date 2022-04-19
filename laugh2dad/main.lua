local fcitx = require("fcitx")

fcitx.addConverter("laugh")

function laugh(str)
  local rule = "lua/laugh2dad/rule.txt"
  for line in io.lines(rule) do
    space, e = string.find(line, " ")
    bad_word = string.sub(line, 0, space - 1)
    good_word = string.sub(line, e + 1)
    -- print("XD"..str..":"..bad_word..":"..good_word) 
    str = string.gsub(str, bad_word, good_word)
  end 
  return str
end
