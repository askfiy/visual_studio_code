math.randomseed(os.time())

local random = math.random(0, 1)

local colors = {}

if random == 0 then
    colors.foreground = "#FFFFFF"
    colors.background = "#68217A"
    colors.header_background = "#16825D"
else
    colors.foreground = "#FFFFFF"
    colors.background = "#007ACC"
    colors.header_background = "#2C896B"
end

local component_colors = {
    a = { fg = colors.foreground, bg = colors.header_background },
    b = { fg = colors.foreground, bg = colors.background },
    c = { fg = colors.foreground, bg = colors.background },

    x = { fg = colors.foreground, bg = colors.background },
    y = { fg = colors.foreground, bg = colors.background },
    z = { fg = colors.foreground, bg = colors.background },
}

return {
    normal = component_colors,
    insert = component_colors,
    visual = component_colors,
    replace = component_colors,
    command = component_colors,
    inactive = component_colors,
}
