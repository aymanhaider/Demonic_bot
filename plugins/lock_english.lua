--[[
     ____   ___ _____ 
    | __ ) / _ \_   _|
    |  _ \| | | || |  
    | |_) | |_| || |  
    |____/ \___/ |_|
                                 
Demonic  bot (BY @Mostank_GT)     
                                                      
--]]
local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['english'] then
                lock_english = data[tostring(msg.to.id)]['settings']['english']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_english == "🔒" then
       delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
"[Qq](.*)",
"[Ww](.*)",
"[Ee](.*)",
"[Rr](.*)",
"[Tt](.*)",
"[Yy](.*)",
"[Uu](.*)",
"[Ii](.*)",
"[Oo](.*)",
"[Pp](.*)",
"[Aa](.*)",
"[Ss](.*)",
"[Dd](.*)",
"[Ff](.*)",
"[Gg](.*)",
"[Hh](.*)",
"[Jj](.*)",
"[Kk](.*)",
"[Ll](.*)",
"[Zz](.*)",
"[Xx](.*)",
"[Cc](.*)",
"[Vv](.*)",
"[Bb](.*)",
"[Nn](.*)",
"[Mm](.*)",
  },
  run = run
}
--[[
     ____   ___ _____ 
    | __ ) / _ \_   _|
    |  _ \| | | || |  
    | |_) | |_| || |  
    |____/ \___/ |_|
                                 
Demonic  bot (BY @aymanwasfe1)      
                                                      
--]]
