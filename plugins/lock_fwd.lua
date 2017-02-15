--[[
     ____   ___ _____ 
    | __ ) / _ \_   _|
    |  _ \| | | || |  
    | |_) | |_| || |  
    |____/ \___/ |_|
                                 
Demonic  bot (BY @Mostank_GT)      
                                                      
--]]
do
local function pre_process(msg)
    local hash = 'mate:'..msg.to.id
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg) and not is_admin1(msg)  then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
    
        return msg
    end
local function run(msg, matches)
    chat_id =  msg.to.id
    if is_momod(msg) and matches[1] == 'nfwd' or matches[1] == 'قفل التوجيه' then     
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
                    return ""
  elseif is_momod(msg) and matches[1] == 'ufwd' or matches[1] == 'فتح التوجيه' then
                    local hash = 'mate:'..msg.to.id
                    redis:del(hash)
                    return ""
end
end
return {
    patterns = {
        '^[/!#](nfwd)$',
        '^[/!#](ufwd)$',
        '^(قفل التوجيه)$',
        '^(فتح التوجيه)$',
    },
    run = run,
    pre_process = pre_process
}
end
--[[
     ____   ___ _____ 
    | __ ) / _ \_   _|
    |  _ \| | | || |  
    | |_) | |_| || |  
    |____/ \___/ |_|
                                 
Demonic  bot (BY @aymanwasfe1)    
                                                      
--]]
