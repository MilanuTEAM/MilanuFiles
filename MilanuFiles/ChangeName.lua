local function ChangeName(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local Ali = DvAlsh:get("MilanuTEAM:Name"..result.id_)
if not result.first_name_ then 
if Ali then 
DvAlsh:del("MilanuTEAM:Name"..result.id_) 
end
end
if result.first_name_ then 
if Ali and Ali ~= result.first_name_ then 
local Alsh_text = {
"اسمك "..result.first_name_.." ليش غيرته 🌚😹",
"وفف اسمكك الجديد يشكك، 🤤♥️ ",
"هاا نشروك بنحراف وغيرت اسمك 🤤♥️",
"تعالو شوفو غير اسمه طلع قفاص 😂🤭️",
"ليش غيرت اسمك "..result.first_name_.."\n قطيت احد حبي ؟ 🌚😹",
"اسمك "..result.first_name_.." فد شي وين زخرفته ؟، 🤤♥️", 
}
Alis = math.random(#Alsh_text)
Dv_Alsh(msg.chat_id_, msg.id_, 1, Alsh_text[Alis], 1, 'html')
end  
DvAlsh:set("MilanuTEAM:Name"..result.id_, result.first_name_)  
end
end
end,nil) 
end
end

end
return {
Milanu = ChangeName
}