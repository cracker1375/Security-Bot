do

function run(msg, matches)

local locks = [[ 

ℹ️locks

🔺 lock|unlock links
🔺 lock|unlock sticker 
🔺 lock|unlock bot 
🔺 lock|unlock flood 
🔺 lock|unlock spam 
🔺 lock|unlock arabic 
🔺 lock|unlock member 
🔺 lock|unlock rtl 
🔺 lock|unlock contacts 
🔺 lock|unlock strict 
🔺 lock|unlock forward 
🔺 lock|unlock reply 
🔺 lock|unlock hashtag 
🔺 lock|unlock media

 ]]
 
 local silents = [[ 

ℹ️silents

🔺 silent [reply|username/userid] 
🔺 unsilent [reply|username/userid]


 ]]

 local welcome = [[ 

ℹ️welcome
🔺 welcome on
🔺 welcome off 
🔺 setwelcome text
🔺 delete welcome


 ]]
 
 local groupreport = [[ 

ℹ️groupreport

🔺 group reports enable 
🔺 group reports disable 

 ]]
 
 local mutechat = [[ 

ℹ️mutechat

🔺 mutechat
🔺 mutechat H/M/s 
🔺 mutechat 1 0 0 (example)
🔺 mutechat 3 15 9 (example)
🔺 unmutechat


 ]]
 
local mods = [[ 

ℹ️mods

🔺 kick [Username | ID | Reply]
🔺 infogroup [info supergroup]
🔺 banlist
🔺 res [username]
🔺 laws
🔺 more

 ]]
 
 local admin = [[ 
 ℹ️all
		
 🔺 help locks		
 🔺 help silent		
 🔺 help welcome		
 🔺 help group report		
 🔺 help mutechat		
 🔺 help mod		
 🔺 help owner		
 🔺 help member
 
 ]]
 
 local owner = [[
ℹ️owner
		
🔺 lock|unlock links 
🔺 lock|unlock sticker
🔺 lock|unlock bot 
🔺 lock|unlock flood
🔺 lock|unlock spam 
🔺 lock|unlock arabic 
🔺 lock|unlock member
🔺 lock|unlock contacts 
🔺 lock|unlock strict 
🔺 lock|unlock hashtag 
🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅
🔺 mute|unmute all 
🔺 mute|unmute text 
🔺 mute|unmute photo 
🔺 mute|unmute video 
🔺 mute|unmute gifs 
🔺 mute|unmute audio 
🔺 mute|unmute forward 
🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅
🔺 ban [username]
🔺 unban [username] 
🔺 muteuser [username] 
🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅
🔺 clean laws 
🔺 clean managers 
🔺 clean mutelist 
🔺 clean bots 
🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅
🔺 infogroup 
🔺 admin list
🔺 Holder
🔺 managers
🔺 bots
🔺 modset [username]
🔺 moddem [username]
🔺 setname
🔺 setphoto
🔺 setlaws (text)
🔺 setlink
🔺 link
🔺 laws
🔺 setflood [num]
🔺 options
🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅
🔺 addword (word)
🔺 rw (word)
🔺 clearbadwords
🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅🔅
🔺 muteslist
🔺 setwlc
🔺 delwlc
🔺 options lock
🔺 banlist
🔺 del
🔺 res [username]


 ]]
 
 local member = [[
 
 ℹ️member
 
 🔺 infome
 🔺 nerkh
 🔺 user id
 🔺 laws
 🔺 more
 🔺 Security
 
 
 ]]
 
 local sudo = [[
 
 ℹ️all
		
 🔺 help locks		
 🔺 help silent		
 🔺 help welcome		
 🔺 help group report		
 🔺 help mutechat		
 🔺 help mod		
 🔺 help owner		
 🔺 help member
 
 
 ]]
 
 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2] == nil then
     
    if is_sudo(msg) then 
        return reply_msg(msg.id, sudo, ok_cb, false)
    elseif is_admin1(msg) then 
        return reply_msg(msg.id, admin, ok_cb, false)
    elseif is_owner(msg) then 
        return reply_msg(msg.id, owner, ok_cb, false)
    elseif is_momod(msg) then 
         return reply_msg(msg.id, mods, ok_cb, false)
    else 
        return reply_msg(msg.id, member, ok_cb, false)
        end
end
 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'owner' then
     if is_owner(msg) then 
         return reply_msg(msg.id, owner, ok_cb, false)
    else return  reply_msg(msg.id, '<code>ℹ️فقط مدیر مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end

 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'mod' then
     if is_momod(msg) then 
         return reply_msg(msg.id, mods, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end 

if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'locks' then
     if is_owner(msg) then 
         return reply_msg(msg.id, locks, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end 

if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'silent' then
     if is_owner(msg) then 
         return reply_msg(msg.id, silents, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end

if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'welcome' then 
     if is_owner(msg) then 
         return reply_msg(msg.id, welcome, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end

if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'group report' then 
     if is_owner(msg) then 
         return reply_msg(msg.id, groupreport, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end

if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'mutechat' then 
     if is_owner(msg) then 
         return reply_msg(msg.id, mutechat, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end

 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'member' then
         return reply_msg(msg.id, member, ok_cb, false)
    end 
end

    
return {
 
  patterns = {
    "^[#/](help)$",
	"^[#/]([Hh]elp)$",
	"^[#/](help)$",
	
	"^[#/](help) (locks)$",
	"^[#/](help) (silent)$",
	"^[#/](help) (welcome)$",
	"^[#/](help) (group report)$",
	"^[#/](help) (mutechat)$",
	"^[#/](help) (mod)$",
	"^[#/](help) (owner)$",
	"^[#/](help) (member)$",
  }, 
  run = run 
}

end

