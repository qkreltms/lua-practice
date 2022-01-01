print('hello from lib')

local function f(a, b)
    return a + b
end

return {
    f = f
}
