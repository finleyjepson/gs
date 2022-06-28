local tab, container = "visuals", "Effects"
local ui_e = {enable = ui.new_checkbox(tab, container, "Disable scope overlay on third person")}
local ref = {scope = ui.reference(tab, container, "Remove Scope Overlay"), third_person = {ui.reference(tab, container, "Force third person (alive)")}}

client.set_event_callback("run_command", function()
    if ui.get(ui_e.enable) then
        if ui.get(ref.third_person[1]) and ui.get(ref.third_person[2]) then
            ui.set(ref.scope, true)
        else
            ui.set(ref.scope, false)
        end
    end
end)
