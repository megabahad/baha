do
local function admin_list(msg)
    local data = load_data(_config.moderation.data)
        local admins = 'admins'
        if not data[tostring(admins)] then
        data[tostring(admins)] = {}
        save_data(_config.moderation.data, data)
        end
        local message = 'Admins >\n'
        for k,v in pairs(data[tostring(admins)]) do
                message = message .. '> @' .. v .. ' [' .. k .. '] ' ..'\n'
        end
        return message
end
local function run(msg, matches)
local uptime = io.popen('uptime'):read('*all')
local admins = admin_list(msg)
local data = load_data(_config.moderation.data)
local group_link = data[tostring(1066233937)]['settings']['set_link'] --put your support id here
local github = 'github.com/CopierTeam/Umbrella-Cp'
local space = '______________________________'
if not group_link then
return ''
end
return "MeGa shield v2.9\nuptime > "..uptime.."\n"..space.."\ndeveloper > @hafez1116hafez\nsudo >\n> @amirho3ien911\n> @Eblis_alone\n"..admins.."\n"..space.."\nchanlua  > @shieldTM\nbot support > @shield_supportbot\nGroup support link >\n"..group_link
end
return {
patterns = {
"^[Ss]hield$",
"^[!/#][Ss]hield$",
"^[!/#][Mm]ega shield$",
"^[Mm]ega shield$",
},
run = run
}
end
