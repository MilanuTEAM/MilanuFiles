local function ChangeName(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local Alsh = DeAlsh:get("MilanuTEAM:Name"..result.id_)
if not result.first_name_ then 
if Alsh then 
DeAlsh:del("MilanuTEAM:Name"..result.id_) 
end
end
if result.first_name_ then 
if Alsh and Alsh ~= result.first_name_ then 
local abs_text = {
"اسمك "..result.first_name_.." ليش غيرته 🌚😹",
"وفف اسمكك الجديد يشكك، 🤤♥️ ",
"ليش غيرت اسمك "..result.first_name_.."\n قطيت احد حبي ؟ 🌚😹",
"اسمك "..result.first_name_.." فد شي وين زخرفته ؟، 🤤♥️", 
}
Alshs = math.random(#abs_text)
De_Alsh(msg.chat_id_, msg.id_, 1, abs_text[Alshs], 1, 'html')
end  
DeAlsh:set("MilanuTEAM:Name"..result.id_, result.first_name_)  
end
end
end,nil) 
end
end

end
return {
Milanu = ChangeName
}