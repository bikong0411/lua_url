lua_url
=======

a url module in lua ,include urlencode(url_escape)、urldecode(url_unescape)、http_build_query、parse_str

usage:
<pre>
<code>
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
</code>
</pre>

output
=========
urlencode http://www.baidu.com/?wd=测啊实打实的
http%3A%2F%2Fwww.baidu.com%2F%3Fwd%3D%B2%E2%B0%A1%CA%B5%B4%F2%CA%B5%B5%C4
urldecode
http://www.baidu.com/?wd=测啊实打实的
parse_url http://sky:pppp@www.baidu.com:8080/xx/yy?a=2#f=5
[
     VAR[1] host => sky
     VAR[2] path => /xx/yy
     VAR[3] user => sky
     VAR[4] scheme => http:
     VAR[5] fragment => f=5
     VAR[6] pass => pppp
     VAR[7] query => a=2
]
parse_str a=2&b=3
[
     VAR[8] a => 2
     VAR[9] b => 3
]
