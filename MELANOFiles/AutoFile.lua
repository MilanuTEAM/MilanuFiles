local function AutoFile(msg)
local text = msg.content_.text_
if Sudo(msg) then
if text == 'تفعيل النسخه التلقائيه' or text == 'تفعيل جلب نسخه الكروبات' or text == 'تفعيل عمل نسخه للمجموعات' then   
De_Alsh(msg.chat_id_,msg.id_, 1, "⌁︙تم تفعيل جلب نسخة الكروبات التلقائيه\n⌁︙سيتم ارسال نسخه تلقائيه للكروبات كل يوم الى خاص المطور الاساسي", 1, 'md')
DeAlsh:del(Milanu.."Alsh:Lock:AutoFile")
end
if text == 'تعطيل النسخه التلقائيه' or text == 'تعطيل جلب نسخه الكروبات' or text == 'تعطيل عمل نسخه للمجموعات' then  
De_Alsh(msg.chat_id_,msg.id_, 1, "⌁︙تم تعطيل جلب نسخة الكروبات التلقائيه", 1, 'md')
DeAlsh:set(Milanu.."Alsh:Lock:AutoFile",true) 
end 
end

if (text and not DeAlsh:get(Milanu.."Alsh:Lock:AutoFile")) then
Time = DeAlsh:get(Milanu.."Alsh:AutoFile:Time")
if Time then 
if Time ~= os.date("%x") then 
local list = DeAlsh:smembers(Milanu..'Alsh:Groups') 
local BotName = (DeAlsh:get(Milanu.."Alsh:NameBot") or 'بروكس')
local GetJson = '{"BotId": '..Milanu..',"BotName": "'..BotName..'","GroupsList":{'  
for k,v in pairs(list) do 
LinkGroups = DeAlsh:get(Milanu.."Alsh:Groups:Links"..v)
Welcomes = DeAlsh:get(Milanu..'Alsh:Groups:Welcomes'..v) or ''
AlshConstructors = DeAlsh:smembers(Milanu..'Alsh:AlshConstructor:'..v)
BasicConstructors = DeAlsh:smembers(Milanu..'Alsh:BasicConstructor:'..v)
Constructors = DeAlsh:smembers(Milanu..'Alsh:Constructor:'..v)
Managers = DeAlsh:smembers(Milanu..'Alsh:Managers:'..v)
Admis = DeAlsh:smembers(Milanu..'Alsh:Admins:'..v)
Vips = DeAlsh:smembers(Milanu..'Alsh:VipMem:'..v)
if k == 1 then
GetJson = GetJson..'"'..v..'":{'
else
GetJson = GetJson..',"'..v..'":{'
end
if #Vips ~= 0 then 
GetJson = GetJson..'"Vips":['
for k,v in pairs(Vips) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Admis ~= 0 then
GetJson = GetJson..'"Admis":['
for k,v in pairs(Admis) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Managers ~= 0 then
GetJson = GetJson..'"Managers":['
for k,v in pairs(Managers) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Constructors ~= 0 then
GetJson = GetJson..'"Constructors":['
for k,v in pairs(Constructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #BasicConstructors ~= 0 then
GetJson = GetJson..'"BasicConstructors":['
for k,v in pairs(BasicConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #AlshConstructors ~= 0 then
GetJson = GetJson..'"AlshConstructors":['
for k,v in pairs(AlshConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if LinkGroups then
GetJson = GetJson..'"LinkGroups":"'..LinkGroups..'",'
end
GetJson = GetJson..'"Welcomes":"'..Welcomes..'"}'
end
GetJson = GetJson..'}}'
local File = io.open('./'..Milanu..'.json', "w")
File:write(GetJson)
File:close()
local abbas = 'https://api.telegram.org/bot' .. TokenBot .. '/sendDocument'
local curl = 'curl "' .. abbas .. '" -F "chat_id='..DevId..'" -F "document=@'..Milanu..'.json' .. '" -F "caption=⌁︙نسخه تلقائيه تحتوي على ↫ '..#list..' مجموعه"'
io.popen(curl)
io.popen('fm -fr '..Milanu..'.json')
DeAlsh:set(Milanu.."Alsh:AutoFile:Time",os.date("%x"))
end
else 
DeAlsh:set(Milanu.."Alsh:AutoFile:Time",os.date("%x"))
end
end

end
return {
Milanu = AutoFile
}