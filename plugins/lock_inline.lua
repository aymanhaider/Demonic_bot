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
    local inline = 'mate:'..msg.to.id
    if msg.text == '[unsupported]' and redis:get(inline) and not is_momod(msg) then
            delete_msg(msg.id, ok_cb, true)
end
    return msg
    end
 local function run(msg, matches)
if is_momod(msg) and matches[1] == "ninl" or matches[1] == "قفل اونلاين" then
local inline = 'mate:'..msg.to.id
redis:set(inline, true)
local text = 'تـ{✅}ـم تـفـ؏ـ(💡)ـيـل مـنـ{🛡}ـ؏ اونـ(💎)ـلايـن\nيـا '..(msg.from.first_name or "erorr")..'\n'
return reply_msg(msg.id, text, ok_cb, false)
end
if is_momod(msg) and matches[1] == "uinl" or matches[1] == "فتح اونلاين" then
    local inline = 'mate:'..msg.to.id
    redis:del(inline)
    local text = 'تـ{✅}ـم تـ؏ـطـ(📴)ـيـل مـنـ{🛡}ـ؏ اونـ(💎)ـلايـن\nيـا '..(msg.from.first_name or "erorr")..'\n'
return reply_msg(msg.id, text, ok_cb, false)
  end
end
return {
    patterns ={
 '^[#!/](ninl)$',
'^[#!/](uinl)$',
'^(قفل اونلاين)$',
'^(فتح اونلاين)$',
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
