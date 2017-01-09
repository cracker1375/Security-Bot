do
local function run(msg, matches, callback, extra)
local hash = 'group:'..msg.to.id
local group_lang = redis:hget(hash,'lang')
if matches[1] == 'setlang' and  matches[2] == 'en' and is_owner(msg) then 
    
   redis:hdel(hash,'lang')
        --return 'Change language group : EN'
		return reply_msg(msg.id, 'Change language group: [English]', ok_cb, false)
end



if matches[1] == 'setlang' and matches[2] == 'fa' and is_owner(msg) then
redis:hset(hash,'lang',matches[2])
        --return 'تغییر زبان گروه به : FA'
		return reply_msg(msg.id, '>زبان گروه با موفقیت بر روی فارسی تنظیم شد: [Persian]', ok_cb, false)
end

if matches[1] == 'setlang' and matches[2] == 'ar' and is_owner(msg) then
redis:hset(hash,'lang',matches[2])
       -- return 'جماعات تغيير اللغة : AR'
		return reply_msg(msg.id, '>جماعات تغيير اللغة: [Arabic]', ok_cb, false)
end
if matches[1] == 'setlang' and matches[2] == 'ch' and is_owner(msg) then
redis:hset(hash,'lang',matches[2])
        --return '更改语言组 : CH'
		return reply_msg(msg.id, '>更改语言组: [China]', ok_cb, false)
end

if matches[1]:lower() == 'listlang' and is_owner(msg) then
        return reply_msg(msg.id, ' >list of available languages \n\n 1- English \n 2- Arabic \n 3- China \n 4- Persian \n🔠 Use the following command can choose the desired language\n !Setlang item ', ok_cb, false)
		--return ' >list of available languages \n\n 1- English \n 2- Arabic \n 3- China \n 4- Persian \n🔠 Use the following command can choose the desired language \n !Setlang <Selected item>'
end

if matches[1] == 'lang' then
if group_lang then 
--return "🔠Group lang : FA"
return reply_msg(msg.id, '>🔠زبان گروه: [Persian]', ok_cb, false)
elseif group_lang then 
--return "🔠لغة المجموعة : FA"
return reply_msg(msg.id, '>🔠لغة المجموعة: [Arabic]', ok_cb, false)
else
--return "🔠Group lang : EN"
return reply_msg(msg.id, '>🔠Group lang: [English]', ok_cb, false)
end
end
end
return {
  patterns = {
    "^[!#/]([Ss][Ee][Tt][Ll][Aa][Nn][Gg]) ([Ff][Aa])$",
	 "^[!#/]([Ss][Ee][Tt][Ll][Aa][Nn][Gg]) ([Aa][Rr])$",
	 "^[!#/]([Ss][Ee][Tt][Ll][Aa][Nn][Gg]) ([Cc][Hh])$",
  "^[!#/]([Ss][Ee][Tt][Ll][Aa][Nn][Gg]) ([Ee][Nn])$",
   "^[!#/]([Ll][Ii][Ss][Tt][Ll][Aa][Nn][Gg])$",
  "^[!#/]([Ll][Aa][Nn][Gg])$"
  },
  run = run
}
end
