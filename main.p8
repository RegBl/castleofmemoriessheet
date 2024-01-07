-- main loop
function _init()
    character = {
        name="tony",
        pronouns="he/they",
        age=21,
        attributes={
            strength=10,
            agility=10,
            presence=10,
            mind=10
        },
        inventory={
            "book",
            "candle",
            "bell",
            "bracelet",
            "+1 ring",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
        },
        weapons={},
        armor={
            worn=false,
            color=5
        },
        shield={
            worn=false,
            color=5,
        },
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

    if character.armor.worn then
        character.armor.color = 7
    else
        character.armor.color = 6
    end

    if character.shield.worn then
        character.shield.color = 7
    else
        character.shield.color = 6
    end
end

function _update()
    if isonoroutofbound(comtitle.x, comtitle.y) then
        getnewangle(comtitle)
    end

    comtitle.x = comtitle.x + cos(comtitle.ang)
    comtitle.y = comtitle.y + sin(comtitle.ang)
    
    if (btnp(4)) then character.armor.worn = not character.armor.worn end

    if (btnp(5)) then character.shield.worn = not character.shield.worn end
end

function _draw()
    cls(1)
    -- print("castle of memories", comtitle.x, comtitle.y, 7)
    -- spr(1, comtitle.x, comtitle.y)

    print("name: " .. character.name, 0, 0, 6)
    print("pronouns: " .. character.pronouns, 0, 8, 6)
    print("age: " .. character.age, 98, 0, 6)

    -- attribute labels
    sspr(48,0,16,16,2,20)
    sspr(64,0,16,16,2,38)
    sspr(80,0,16,16,2,56)
    sspr(96,0,16,16,2,74)

    -- attribute values
    fillp(0b0101101001011010)
    rectfill(20, 20, 36, 36, 6)
    rectfill(20, 38, 36, 54, 6)
    rectfill(20, 56, 36, 72, 6)
    rectfill(20, 74, 36, 90, 6)
    fillp()

    rectfill(22, 22, 34, 34, 0)
    rectfill(22, 40, 34, 52, 0)
    rectfill(22, 58, 34, 70, 0)
    rectfill(22, 76, 34, 88, 0)

    print(character.attributes.strength, 25, 26, 7)
    print(character.attributes.agility, 25, 44, 7)
    print(character.attributes.presence, 25, 62, 7)
    print(character.attributes.mind, 25, 80, 7)

    -- inventory
    for i=1,character.attributes.strength do
        if character.inventory[i]=="" then
            print("---", 42, 12 + (i * 8), 7)
        else
            print(character.inventory[i], 42, 12 + (i * 8), 7)
        end
    end

    -- armor
    if (character.armor.worn) then pal(5, 6) end
    sspr(16, 0, 16, 16, 70, 100)
    print("-1 DMG", 65, 117, 5)
    pal()

    -- shield
    if (character.shield.worn) then pal(5, 6) end
    sspr(32, 0, 16, 16, 104, 100)
    print("+1 AGI", 99, 117, 5)
    pal()

end