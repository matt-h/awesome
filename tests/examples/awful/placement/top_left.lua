-- Align a client to the top left of the parent area. --DOC_HEADER
-- @tparam drawable d A drawable (like `client`, `mouse` or `wibox`) --DOC_HEADER
-- @tparam[opt={}] table args Other arguments") --DOC_HEADER
-- @treturn table The new geometry --DOC_HEADER
-- @name top_left --DOC_HEADER
-- @class function --DOC_HEADER

screen[1]._resize {width = 128, height = 96} --DOC_HIDE
local awful = {placement = require("awful.placement")} --DOC_HIDE
local c = client.gen_fake {x = 45, y = 35, width=40, height=30} --DOC_HIDE

awful.placement.top_left(client.focus)

assert(c.x == 0 and c.y==0 and c.width==40 and c.height==30)--DOC_HIDE

--DOC_HIDE vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
