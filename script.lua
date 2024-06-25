local err = get("err")

local btn = get("btn")
local mn = get("min")
local mx = get("max")
local rand = get("random")

local coinbtn = get("coinbtn")
-- local img = get("coinimg")
local cointype = get("cointype")

local heads = "https://i.imgur.com/4SwO5Z4.png"
local tails = "https://i.imgur.com/Lgc7Bz7.png"

btn.on_click(function()
    err.set_content()
    rand.set_content()
    print("Click!")
    local mnvalue = tonumber(mn.get_content(), 10)
    local mxvalue = tonumber(mx.get_content(), 10)

    if mnvalue == nil or mxvalue == nil then
        err.set_content("Enter valid numbers")
    elseif mnvalue >= mxvalue then
        err.set_content("Min value should be smaller than max value")
    else
        local randnum = math.random(mnvalue, mxvalue)
        rand.set_content(randnum)
    end
    
end)


coinbtn.on_click(function()
    -- img.set_source("")
    cointype.set_content("")
    local type = math.random(1, 2)
    if (type == 1) then
        -- img.set_source(heads)
        cointype.set_content("Heads")
    else
        -- img.set_source(tails)
        cointype.set_content("Tails")
    end
end)
