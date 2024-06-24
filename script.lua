local btn = get("btn")
local mn = get("min")
local mx = get("max")
local err = get("err")
local rand = get("random")

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