-- Variables

local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local isLoggedIn = LocalPlayer.state['isLoggedIn']
local group = 'user'
local CurrentCops = 0
local Inside = false

-- Functions

local function SetTemplate()
    print("https://github.com/evanillaa/qb-template")
end

-- Events

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.TriggerCallback('qb-template:server:GetPermissions', function(UserGroup)
        group = UserGroup
    end)
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
end)

RegisterNetEvent('QBCore:Client:OnPermissionUpdate', function(UserGroup)
    group = UserGroup
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
end)

RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
    PlayerData.gang = GangInfo
end)

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
    PlayerData = val
end)

-- Threads

CreateThread(function()
	if isLoggedIn and PlayerData.job.name == 'police' and Inside then
		print("https://github.com/evanillaa/qb-template")
	end
end)

-- Exports

exports('SetTemplate', SetTemplate)

exports('Inside', function()
  return Inside
end)
