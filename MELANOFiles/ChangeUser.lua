local function ChangeUser(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local abbs = DeAlsh:get("MilanuTEAM:User"..result.id_)
if not result.username_ then 
if abbs then 
De_Alsh(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بسرعه، 😹💔 \nهذا معرفه @"..abbs.."", 1, 'html')
DeAlsh:del("MilanuTEAM:User"..result.id_) 
end
end
if result.username_ then 
if abbs and abbs ~= result.username_ then 
local Alsh_text = {
'معرفك الجديد عشره بربع محد ياخذه😹💔',
"هاها غيرت معرفك نشروك بقناة فضايح😹💔💭",
"معرفك الجديد حلو منين خامطه؟!🤤♥️",
"معرفك القديم @"..result.username_.." ضمه بقناة لاينبعص، 😹♥️",
}
abbss = math.random(#Alsh_text)
De_Alsh(msg.chat_id_, msg.id_, 1, Alsh_text[abbss], 1, 'html')
end  
DeAlsh:set("MilanuTEAM:User"..result.id_, result.username_) 
end
end
end,nil) 
end
end

end
return {
Milanu = ChangeUser
}