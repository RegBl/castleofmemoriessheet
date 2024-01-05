-- main loop
function _init()
    comtitle = {
        x=1,
        y=64,
        dir=1
    }
end

function _update()
    if comtitle.x==0
    or comtitle.x==57 then
        comtitle.dir = comtitle.dir * -1
    end

    comtitle.x = comtitle.x + comtitle.dir
end

function _draw()
    cls(1)
    print("castle of memories", comtitle.x, comtitle.y, 7)
end