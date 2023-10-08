local startup = nil
local halting = nil



function wait(seconds)
    os.execute("sleep " .. seconds)
end
-- wait(0.01 + math.random() * 0.2)

startup = true
function startup()
    print("starting up...")
    for i = 1, 100 do
        if halting == false or halting == nil then
            wait(0.04 + math.random() * 0.2)
        elseif halting == true then
            wait(3)
            halting = false
        end
        print("loading...",i,"...") 
        if math.random(1,62) == 2 then
            halting = true
        end
    end
end
startup()