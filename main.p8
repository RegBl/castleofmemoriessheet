-- main loop
function _init()
    comtitle = {
        x=64,
        y=64,
        ang=rnd(360)
    }
end

function _update()
    if isonoroutofbound(comtitle.x, comtitle.y) then
        getnewangle(comtitle)
    end

    comtitle.x = comtitle.x + cos(comtitle.ang)
    comtitle.y = comtitle.y + sin(comtitle.ang)
end

function _draw()
    cls(1)
    -- print("castle of memories", comtitle.x, comtitle.y, 7)
    spr(1, comtitle.x, comtitle.y)
end