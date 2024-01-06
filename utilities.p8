function isonoroutofbound(x, y)
    return (x<=0 or x>=120 or y<=0 or y>=121)
end

function getnewangle(obj)
    repeat
        newang = rnd(360)
        newx = obj.x + cos(newang)
        newy = obj.y + sin(newang)
    until not isonoroutofbound(newx, newy)

    obj.ang = newang
end