print('hello world')
print('hello' .. " " .. "world\n\n")
print('hello world')

local hello = 'hello'
-- c 스타일 format
print(string.format("%s%s</%s>", 1, hello, "world"))
print(string.format("%f", 19))

print(string.format("%03d", 1))

-- 아스키코드
print(string.char(65))

-- 테이블 lua에서 유일한 자료구조
local table = {
    11,
    '22',
    {33},
    key = 'value'
}
print(table[1]) -- 11
print(table[3][1])
print(table.key)
print(table['key'])

-- start, end, add(default=1), python 형식
for i = 1, 5, 1 do
    print(i .. "for")
end

for key, value in ipairs({'a', 'b'}) do
    print(key, value) -- 1 a, 2 b
end

for key, value in pairs({
    keya = 'a',
    keyb = 'b'
}) do
    print(key, value) -- keya a, keyb b
end

i = 1
repeat
    print(i .. 'repeat until')
    i = i + 1
until i == 3

-- function
local table = {
    func = function(a)
        return a
    end
}

print(table.func("return function"))

local a = 5
local function test()
    print(a)
end
test() -- 5

local table = {
    x = 11
}
-- local 붙이지 않아도 됨,
function table.func2(a)
    print('hello in func2', a)
end
table.func2(0)
-- 만약 테이블 안의 값을 호출하고 싶다면?
function table.func3(self)
    print('hello in func3', self.x)
end
table:func3() -- ':'사용시 함수의 첫번째 인자로 'table'이 넘겨진다.

-- or, and 

print(0 or 2) -- 0
print(false or 2) -- 2
print('' or 2) -- ''
print({} or 2) -- table
print(nil or 2) -- 2
print(1 and 2) -- 2

-- require 외부파일 실행하는 기능
local lib = require('lib')
print(lib.f(1, 2))
