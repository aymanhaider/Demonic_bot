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
            if data[tostring(msg.to.id)]['settings']['media'] then
                lock_media = data[tostring(msg.to.id)]['settings']['media']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_media == "🔒" then
       delete_msg(msg.id, ok_cb, true)
       send_large_msg(get_receiver(msg), ' مـمـ(🚫)ـنـو؏ يـا '..msg.from.first_name..'\nالـصـ(📷)ـور - الـفـيـ(🎥)ـديـو - الـتـوجـ(↺)ـيـه - الـروابـ(🖇)ـط - وجـمـ(‼️)ـيـع الـمـيـ(🔕)ـديا\n #user : @'..(msg.from.username or "error")..'\n')
    end
end
 
return {
  patterns = {
"%[(photo)%]",
"%[(document)%]",
"%[(video)%]",
"%[(audio)%]",
"%[(gif)%]",
"%[(sticker)%]",
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
