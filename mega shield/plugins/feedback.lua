do

function run(msg, matches)

local fuse = 'NeW FeedBack \n\nID ▶️ : ' .. msg.from.id .. '\n\nGROUP ID ▶️ : '..msg.to.id..'\n\nName▶️ : ' .. msg.from.print_name ..'\n\nusername ▶️ :@'..(msg.from.username or 'ندارد')..'\n\n🅿️♏️ :\n\n\n' .. matches[1] 
local fuses = '!printf user#id' .. msg.from.id


    local text = matches[1]
 bannedidone = string.find(msg.from.id, '123')
        bannedidtwo =string.find(msg.from.id, '465')       
   bannedidthree =string.find(msg.from.id, '678')  


        print(msg.to.id)

        if bannedidone or bannedidtwo or bannedidthree then                   
                return 'You are banned to send a feedback\n@shield_supportbot'
 else


                 local sends0 = send_msg('user#80182995', fuse, ok_cb, false)

 return '⭕پیام شما ارسال شد و به زودی بررسی می شود⭕\n\nبرای ارتباط با ما\n@shield_supportbot'

     

end

end
return {
  description = "Feedback",

  usage = "feedback : ارسال پیام به ادمین های ربات",
  patterns = {
    "^[!/#][Ff]eedback (.*)$"

  },
  run = run
}

end
