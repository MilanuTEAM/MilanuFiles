local function Reply(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if not DeAlsh:get(Milanu..'Alsh:Lock:Reply'..msg.chat_id_) then
if text == "انجب" or text == "نجب" or text == "انجبي" or text == "نجبي" or text == "انجبو" or text == "نجبو" then
if SudoId(msg) then
rd = 'مطوريي اغلط شكد متريد نورتنه ، ♥️💪🏿'
elseif SudoBot(msg) then
rd = 'احترم نفسكك لا عبالكك رافعيك مطور ، 🖕🏿♥️'
elseif ManagerAll(msg) then
rd = 'حبيبي راح اسامحكك لان مدير وع راسي ، 🖐🏿♥️'
elseif AdminAll(msg) then
rd = 'راح اسامحكك هلمره لانك ادمن ، ☝🏿♥️'
elseif VipAll(msg) then
rd = 'راح احترمكك تره بس هلمره لانك مميز عندي ، ☝🏿♥️'
elseif AlshConstructor(msg) then
rd = 'تاج راسيي غير انت منشئ المجموعه ،🖐🏿♥️'
elseif Constructor(msg) then
rd = 'تاج راسيي انت المنشئ الاساسي ،🖐🏿♥️'
elseif BasicConstructor(msg) then
rd = 'حبيبي المنشئ استقبلها منكك ،👍🏿♥️'
elseif Manager(msg) then
rd = 'حبيبي راح اسامحكك لان مدير وع راسي ، 🖐🏿♥️'
elseif Admin(msg) then
rd = 'راح اسامحكك هلمره لانك ادمن ، ☝🏿♥️'
elseif VipMem(msg) then
rd = 'راح احترمكك تره بس هلمره لانك مميز عندي ، ☝🏿♥️'
else
rd = 'لكك هوه انت عضو وجاي تغلط ؟، 🖕🏿♥️'
end
De_Alsh(msg.chat_id_, msg.id_, 1,rd, 1, 'html')
end
if text == 'دي' or text == 'ديي' or text == 'دي بابه' then 
MilanuTEAM =  "آخلُِآقٌڪڪ لُِڪڪ 𖠙 😒🔪"
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md') 
return false
end
if text == 'السلام عليكم' or text == 'سلام عليكم' then 
MilanuTEAM =  "ياھَہّلْاا ۅﻋ̝̚لْيڪْم الْﺳ̭͠ لْام 𖠙 🤤♥️"
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md') 
return false
end
if text == '😭💔' or text == '😭😭' or text == '😭😭😭' or text == '😿💔' or text == '😭😭😭' or text == '😭😭😭😭' then 
MilanuTEAM =  "مآآعٍآشُ آلُِي يزعٍلُِڪڪ 𖠙 😏♥️"
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md') 
return false
end
if text == '🌚💔' or text == '💔🌚' or text == '🚶‍♂💔' or text == '💔' or text == '😔💔' or text == '🚶‍♀💔' or text == '😭' then 
MilanuTEAM =  "شبّيي اﻟ̣̣פﻟ̣̣و 𖠙 😿💔"
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md') 
return false
end
if text == 'باي' or text == 'بااي' or text == 'اروح' or text == 'اروح احسن' or text == 'اولي احسن' or text == 'راح اروح' or text == 'باي انام' then 
MilanuTEAM =  "أُرٌجُعُ عٍيدِهآآ مٍوو تنِْسةه 𖠙 🤤♥️"
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md') 
return false
end
if text == 'هلو' or text == 'هلاو' or text == 'هلا' or text == 'هلاوو' or text == 'هيلاو' or text == 'هيلاوو' or text == 'هلاا' then 
local MilanuTEAM = {"اࠗط็لق֯ق֯ هٞللاࠗ୨و 𖠙 🤤♥️" ,"هۂَلاا نۨہٰورتت يعمۘري 𖠙 🤤♥️" } 
De_Alsh2 = math.random(#MilanuTEAM) 
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM[De_Alsh2] , 1, 'md') 
return false
end
if text == 'شونك' or text == 'شونج' or text == 'شلونك' or text == 'شلونج' or text == 'شونكم' or text == 'شلونكم' or text == 'شلخبار' or text == 'شلون الاخبار' or text == 'شخبارك' then 
local MilanuTEAM = {"ماﺷ͠ يةھَہّ يﻋ̝̚مريي ۅاﻧﺗ̲ت 𖠙 🤤♥️" ,"الحۡمۘدللهۂَ ٰوانۨہتت 𖠙 🤤♥️","تمۘامۘ عمۘري ٰوانۨہتت 𖠙 🤤♥️"} 
De_Alsh2 = math.random(#MilanuTEAM) 
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM[De_Alsh2] , 1, 'md') 
return false
end
if text == 'وينك' or text == 'وينج' then
MilanuTEAM =  "مْوٌجہوٌدِ يہمْگُ يحلوُ 𖠙 😉♥️"
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md') 
return false
end
if text == 'بوت عواي' or text == 'بوت زربه' or text == 'البوت عاوي' or text == 'البوت زربه' then
MilanuTEAM =  "اطردكك تجرب ؟ ، 😕🔪"
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md') 
return false
end
if text == 'نايمين' or text == 'ميتين' then
MilanuTEAM =  "طُآمسين ووعٍيوونڪ 𖠙 😪🖤ۦ"
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md') 
return false
end
if text == 'هلوباي' or text == 'هلو باي' then  
MilanuTEAM =  "شحۡسۜيت مۘنۨہ هيجۚ ּكتبت ؟ 🌝♥️"
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md') 
return false
end
if text == '@OR_33' then  
MilanuTEAM =  "مبرمج سورسي هاذ 🌝♥️"
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md') 
return false
end
if text == 'اكلك' or text == 'اكلج' or text == 'اكلكم' then 
MilanuTEAM =  "ڪوولُِ مآڪوولُِ لُِآحٍدِ 𖠙 😉♥️"
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md')
return false
end
if text == 'فرخ' or text == 'فرخه' then
MilanuTEAM =  "ٰوينۨہهۂَ خۡل احۡصرهۂَ 𖠙 😹♥️" 
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md') 
return false
end
if text == 'سورس علش' or text == 'سورس ميلانو' or text == 'سورس ديف ميلانو' or text == 'سورس زربه' or text == 'السورس زربه' or text == 'سورس عاوي' or text == 'السورس عاوي' then 
MilanuTEAM =  "لُِآ سوورس خآلُِتڪ دِي لُِڪ 𖠙 😒🔪" 
De_Alsh(msg.chat_id_, msg.id_, 1, MilanuTEAM, 1, 'md')
return false
end
end

if Manager(msg) then
if text == 'تفعيل ردود البوت' or text == 'تفعيل الردود' then
if not DeAlsh:get(Milanu..'Alsh:Lock:Reply'..msg.chat_id_) then
De_Alsh(msg.chat_id_, msg.id_, 1, '⌁︙ردود البوت بالتاكيد مفعله ', 1, 'md')
else
De_Alsh(msg.chat_id_, msg.id_, 1, '⌁︙تم تفعيل ردود البوت', 1, 'md')
De_Alsh:del(Milanu..'Alsh:Lock:Reply'..msg.chat_id_)
end end
if text == 'تعطيل ردود البوت' or text == 'تعطيل الردود' then
if DeAlsh:get(Milanu..'Alsh:Lock:Reply'..msg.chat_id_) then
De_Alsh(msg.chat_id_, msg.id_, 1, '⌁︙ردود البوت بالتاكيد معطله ', 1, 'md')
else
De_Alsh:set(Milanu..'Alsh:Lock:Reply'..msg.chat_id_,true)
De_Alsh(msg.chat_id_, msg.id_, 1, '⌁︙تم تعطيل ردود البوت', 1, 'md')
end end
end
end

end
return {
Milanu = Reply
}
