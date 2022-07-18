################################
################################
######  Dev  |  tony_tls  ######
################################
################################

local DISCORD_WEBHOOK = "VOTRE WEBOOK"
local DISCORD_NAME = "Centrale LSPD"
local STEAM_KEY = ""
local DISCORD_IMAGE = "https://i.imgur.com/rnMbgUi.png"


function GetIDFromSource(Type, ID)
    local IDs = GetPlayerIdentifiers(ID)
    for k, CurrentID in pairs(IDs) do
        local ID = stringsplit(CurrentID, ':')
        if (ID[1]:lower() == string.lower(Type)) then
            return ID[2]:lower()
        end
    end
    return nil
end

function stringsplit(input, seperator)
	if seperator == nil then
		seperator = '%s'
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(input, '([^'..seperator..']+)') do
		t[i] = str
		i = i + 1
	end
	
	return t
end

function sendToDiscord(name, message, color)
  local connect = {
        {
            ["color"] = color,
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = "LSPD - 2021/2022",
            },
        }
    }
  PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
end



RegisterServerEvent('plaintelspd')
AddEventHandler('plaintelspd',function(message)
    sendToDiscord("Centrale LSPD", '```' ..message.. '```', 16711680)
end)


RegisterServerEvent('candidature')
AddEventHandler('candidature',function(message)
    sendToDiscord("Candidature", '```' ..message.. '```', 16711680)
end)




################################
################################
######  Dev  |  tony_tls  ######
################################
################################