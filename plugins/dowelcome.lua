--[[
     ____   ___ _____ 
    | __ ) / _ \_   _|
    |  _ \| | | || |  
    | |_) | |_| || |  
    |____/ \___/ |_|
                                 
Demonic  bot (BY @Mostank_GT)    
                                                      
--]]
local function run(msg, matches, callback, extra)
local data = load_data(_config.moderation.data)
local group_welcome = data[tostring(msg.to.id)]['group_welcome']
if matches[1] == 'chat_add_user' or 'chat_add_user_link' then --For Normal Group
    if not msg.service then 
        return nil 
    else--@Mostank_GT
if string.match(group_welcome, '{gpname}') then group_welcome = string.gsub(group_welcome, '{gpname}', ""..string.gsub(msg.to.print_name, "_", " ").."")
 end
if string.match(group_welcome, '{firstname}') then group_welcome = string.gsub(group_welcome, '{firstname}', ""..(msg.action.user.first_name or '').."")
 end
if string.match(group_welcome, '{lastname}') then group_welcome = string.gsub(group_welcome, '{lastname}', ""..(msg.action.user.last_name or '').."")
 end
if string.match(group_welcome, '{username}') then group_welcome = string.gsub(group_welcome, '{username}', "@"..(msg.action.user.username or '').."")
end
if string.match(group_welcome, '{addeduser}') then group_welcome = string.gsub(group_welcome, '{addeduser}', "@"..(msg.from.username or '').."")
end
if string.match(group_welcome, '{gpid}') then group_welcome = string.gsub(group_welcome, '{gpid}', ""..(msg.to.id or '').."")
end
if string.match(group_welcome, '{id}') then group_welcome = string.gsub(group_welcome, '{id}', ""..(msg.action.user.id or '').."")
end
if string.match(group_welcome, '{addedfirstname}') then group_welcome = string.gsub(group_welcome, '{addedfirstname}', ""..(msg.from.first_name or '').."")
end
if string.match(group_welcome, '{اسم المجموعه}') then group_welcome = string.gsub(group_welcome, '{اسم المجموعه}', ""..string.gsub(msg.to.print_name, "_", " ").."")
 end
if string.match(group_welcome, '{اسمك حبيبي}') then group_welcome = string.gsub(group_welcome, '{اسم الاول}', ""..(msg.action.user.first_name or '').."")
 end
if string.match(group_welcome, '{الاسم الثلاثي}') then group_welcome = string.gsub(group_welcome, '{اسم الكامل}', ""..(msg.action.user.last_name or '').."")
 end
if string.match(group_welcome, '{معرفك حبي}') then group_welcome = string.gsub(group_welcome, '{المعرف}', "@"..(msg.action.user.username or '').."")
end
if string.match(group_welcome, '{معرف الضافك}') then group_welcome = string.gsub(group_welcome, '{معرف الضافك}', "@"..(msg.from.username or '').."")
end
if string.match(group_welcome, '{ايدي المجموعه}') then group_welcome = string.gsub(group_welcome, '{ايدي المجموعه}', ""..(msg.to.id or '').."")
end
if string.match(group_welcome, '{ايدي}') then group_welcome = string.gsub(group_welcome, '{ايدي}', ""..(msg.action.user.id or '').."")
end
if string.match(group_welcome, '{اسم الضافك}') then group_welcome = string.gsub(group_welcome, '{اسم الضافك}', ""..(msg.from.first_name or '').."")
end
return group_welcome
end
end
end
return {
  patterns = {
  "^!!tgservice (chat_add_user)$",
  "^!!tgservice (chat_add_user_link)$",
  },
  run = run,
  pre_process = pre_process
}
--[[
     ____   ___ _____ 
    | __ ) / _ \_   _|
    |  _ \| | | || |  
    | |_) | |_| || |  
    |____/ \___/ |_|
                                 
Demonic  bot (BY @aymanwasfe1)  
                                                      
--]]
