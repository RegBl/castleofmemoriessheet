-- main loop
function _init()
    character = {
        name="",
        pronouns="",
        age=21,
        attributes={
            strength=10,
            agility=10,
            presence=10,
            mind=10
        },
        inventory={},
        weapons={},
        armor=false,
        shield=false,
        hp={
            current=10,
            max=10
        },
        xp={
            total=0,
            spent=0,
        }
    }

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