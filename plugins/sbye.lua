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
local group_bye = data[tostring(msg.to.id)]['group_bye']
if matches[1] == 'chat_del_user' then --For Normal Group
    if not msg.service then 
        return nil 
    else
        return group_bye
end
end
end
return {
  patterns = {
  "^!!tgservice (chat_del_user)$"
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
