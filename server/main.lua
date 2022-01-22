local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-template:server:GetPermissions', function(source, cb)
    local src = source
    local group = QBCore.Functions.GetPermission(src)
    cb(group)
end)
