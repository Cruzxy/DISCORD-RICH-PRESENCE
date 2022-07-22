local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

src = Tunnel.getInterface("discord",src)


Citizen.CreateThread(function()
    while true do
	local appID = 886013439913373698
	local imgLogo = 'cruz'
	local nome, sobrenome = src.Identidade()
        local id = GetPlayerServerId(PlayerId())

        SetDiscordAppId(appID)
        SetDiscordRichPresenceAsset(imgLogo)
        SetDiscordRichPresenceAssetText('Cruz Community')
	SetDiscordRichPresenceAction(1, "Discord", "https://discord.gg/BmN9dWb9Nj")
	SetRichPresence(" ID: "..id.." "..nome.." "..sobrenome.." ")

        Citizen.Wait(60000)
    end
end)
