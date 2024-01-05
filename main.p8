-- main loop
function _init()
    comx = 1
    comy = 64
    comz = 1
end

function _update()
    if comx==0
    or comx==57 then
        comz = comz * -1
    end

    comx = comx + comz
end

function _draw()
    cls(1)
    print("castle of memories", comx, comy, 7)
end