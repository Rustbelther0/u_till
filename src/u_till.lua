local u_till = {}
--shows the functions in a module arg loaded module name
function u_till.shwfnc(mdl,mdllst)
local m = mdl
for i in pairs(m) do
print(i)
end
end
--shows loaded modules
function u_till.shwldd()
for i in pairs(package.loaded) do
print(i)
end
end
-- this saves the loaded modules
function u_till.svldd(file_path)
local sv = io.open(file_path,'w')
for i in pairs(package.loaded) do
sv:write(i,'\n')
end
sv:close()
end
--this loads modules from saved state
function u_till.lddsvd(file_path)
local sv = io.open(file_path,'r')
local sl = {
  'string',
  'debug',
  'package',
  '_G',
  'io',
  'os',
  'table',
  'math',
  'coroutine',
  'u_till'
}
local tl = {}
local pl = {}
for l in sv:lines() do
l = tostring(l)
pl[l] = false
if string.find(l,'%.') or string.find(l,'/') then
print(l)
pl[l] = true
end
if pl[l] == false then
for i in pairs(sl)do
print(l, sl[i])
if l == sl[i] then
pl[l] = true
end
end
end
end
for o in pairs(pl) do
print(o,pl[o])
if pl[o] == false then
table.insert(tl,o)
end
end
for i in pairs(tl) do
local m = tl[i]
local cmd = string.format('%s = require \'%s\'',m,m)
if cmd then
print(cmd)
assert(loadstring(cmd))()
end
end
end
--simply shows the modules in a u_till save file
function u_till.shwsvd(file_path)
local f = io.open(file_path)
for l in f:lines() do
print(l)
end
end
--shows  modules list var =u_till.shwlst() makes for easy module selection for ldmdl and shwmdl shwsb etc
function u_till.shwlst()
tmp = os.tmpname()
os.execute('luarocks list | grep -v installed - >'..tmp)
local f = io.open(tmp,'r')
local r = {}
for l in f:lines() do
if string.match(l,'%w+') then
table.insert(r,l)
end
end
for k,v in ipairs(r) do
print(k,v)
end
return r
end

return u_till