--[[
     ____   ___ _____ 
    | __ ) / _ \_   _|
    |  _ \| | | || |  
    | |_) | |_| || |  
    |____/ \___/ |_|
                                 
Demonic  bot (BY @Mostank_GT)  
                                                      
--]]
local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, ' تـ{✅}ـم تـنـظـ(✨)ـيـف عـ{♻️}ـدد '..#result..' مـسجـاتـ«', ok_cb, true)
  else
    send_msg(extra.chatid, ' تـ{✅}ـم تـنـظـ(✨)ـيـف الـمـجـمـوعـة', ok_cb, true)
  end
end
local function run(msg, matches)
  if matches[1] == 'dmsg' or matches[1] == 'حذف' and is_sudo(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 10000 or tonumber(matches[2]) < 1 then
        return ""
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "لـلـمـ{🏆}ـدراء فـقـ(‼️)ـط"
    end
  else
    return 
  end
end

return {
    patterns = {
        '^[!/#](dmsg) (%d*)$',
        '^(حذف) (%d*)$',
        
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
