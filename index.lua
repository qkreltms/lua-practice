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
