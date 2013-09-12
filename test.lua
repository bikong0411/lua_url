#!/usr/bin/env lua
url = require('url')
pprint = require("pprint")
u = "http://www.baidu.com/?wd=测啊实打实的"
print("urlencode "..u)
print(url:url_escape(u))
print("urldecode")
print(url:url_unescape(url:url_escape(u)))
local url_info = url:parse_url("http://sky:pppp@www.baidu.com:8080/xx/yy?a=2#f=5")
local tb = url:parse_str("a=2&b=3")
print("parse_url http://sky:pppp@www.baidu.com:8080/xx/yy?a=2#f=5")
pprint:pprint(url_info)
print("parse_str a=2&b=3")
pprint:pprint(tb)
