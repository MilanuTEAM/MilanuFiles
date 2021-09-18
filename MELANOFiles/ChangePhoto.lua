local function ChangePhoto(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local Alsh = DeAlsh:get("MilanuTEAM:Photo"..result.id_)
if not result.profile_photo_ then 
if Alsh then 
De_Alsh(msg.chat_id_, msg.id_, 1, "حذف كل صوره مضروب بوري، 😹💔", 1, 'html')
DeAlsh:del("MilanuTEAM:Photo"..result.id_) 
end
end
if result.profile_photo_ then 
if Alsh and Alsh ~= result.profile_photo_.big_.persistent_id_ then 
local Alsh_text = {
"وفف مو صوره غنبلةة، 🤤♥️",
"طالع صاكك بالصوره الجديده ممكن نرتبط؟ ، 🤤♥️",
"حطيت صوره جديده عود شوفوني اني صاكك بنات، 😹♥️",
"اححح شنيي هالصوره الجديده، 🤤♥️",
}
Alsh3 = math.random(#Alsh_text)
De_Alsh(msg.chat_id_, msg.id_, 1, Alsh_text[Alsh3], 1, 'html')
end  
DeAlsh:set("MilanuTEAM:Photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end
end
end,nil) 
end
end

end
return {
Milanu = ChangePhoto
}