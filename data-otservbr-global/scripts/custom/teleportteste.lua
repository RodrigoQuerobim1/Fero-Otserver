local teleport = TalkAction("!Teleport")

function teleport.onSay(player, words, param)
    if not player:getCondition(CONDITION_INFIGHT, CONDITIONID_DEFAULT) then
        player:teleportTo(player:getTown():getTemplePosition())
        player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
        return false
    else
        player:sendTextMessage(MESSAGE_STATUS_WARNING, "You can't teleport during battles.")
        return false
    end
return true
end

teleport:register()