#!/usr/bin/env lua
module(...,package.seeall)
local string = string
local pprint = {
   ["i"] = 0,
   ["indent"] = 0,
   ["pprint"] = pprint
}

function pprint:pprint(tb,tab)
   tab = tab or 8; 
   print(string.format("%".. tostring(self.indent).."s","["))
   self.indent = self.indent + tab
   if type(tb) == "table" then
      for k,v in pairs(tb) do
	 self.i = self.i+1
	 if type(v) == "table" then
	     print(string.format("%"..tostring(self.indent).."s[" ..tostring(self.i) .. "] %s => ","VAR",k)) 
	     self:pprint(v)
	 else
	     print(string.format("%" .. tostring(self.indent) .. "s[".. tostring(self.i) .."] %s => %s","VAR",k,v))
	 end
      end
   else
      print(tb)
   end
   self.indent = self.indent - tab
   print(string.format("%"..tostring(self.indent).."s","]"))
end
return pprint
