local dist      = ui.new_slider("LUA", "A", "Thirdperson distance", 30, 200, 150)
local pitch     = ui.new_slider("LUA", "A", "Thirdperson pitch offset", 0, 90, 0)
local yaw       = ui.new_slider("LUA", "A", "Thirdperson yaw offset", -179, 179, 0)

local cam_idealdist = cvar.cam_idealdist
local cam_idealpitch = cvar.cam_idealpitch
local cam_idealyaw = cvar.cam_idealyaw

local function update()
    cvar.c_mindistance:set_int(ui.get(dist))
    cvar.c_maxdistance:set_int(ui.get(dist))

    cam_idealpitch:set_float(ui.get(pitch))
    cam_idealyaw:set_float(ui.get(yaw))
end

ui.set_callback(dist, update)
ui.set_callback(pitch, update)
ui.set_callback(yaw, update)
