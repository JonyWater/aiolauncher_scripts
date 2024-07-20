-- name = "Browse Web"
-- description = "Open url in your default browser"
-- data_source = "internal"
-- type = "search"
-- author = "JohnyWater"
-- version = "1.0"

text_from = ""
text_to = ""

local md_color = require "md_colors"
local green = md_colors.green_600

function on_search(input)
    text_from = input
    text_to = ""
    search:show({input},{green})
end

function on_click(idx)
    system:open_browser("https://"..text_from)
end
