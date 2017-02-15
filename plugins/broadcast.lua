--[[
     ____   ___ _____ 
    | __ ) / _ \_   _|
    |  _ \| | | || |  
    | |_) | |_| || |  
    |____/ \___/ |_|  
                                 
Demonic  bot (BY @Mostank_GT)
    
                                                      
--]]
local function run(msg, matches)
	if matches[1] == 'bc' or matches[1] == 'بث' and is_admin1(msg) then
		local response = matches[3]
		--send_large_msg("chat#id"..matches[2], response)
		send_large_msg("channel#id"..matches[2], response)
	end
	if matches[1] == 'sher' or matches[1] == 'اذاعة' then
		if is_sudo(msg) then -- Only sudo !
			local data = load_data(_config.moderation.data)
			local groups = 'groups'
			local response = matches[2]
			for k,v in pairs(data[tostring(groups)]) do
				chat_id =  v
				local chat = 'chat#id'..chat_id
				local channel = 'channel#id'..chat_id
				send_large_msg(chat, response)
				send_large_msg(channel, response)
			end
		end
	end
end
return {
  patterns = {
    "^[#!/](sher) (.+)$",
    "^[#!/](bc) (%d+) (.*)$",
    "^(اذاعة) (.+)$",
    "^(بث) (%d+) (.*)$",
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
