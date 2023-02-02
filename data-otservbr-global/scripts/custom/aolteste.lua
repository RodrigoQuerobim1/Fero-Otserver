local aol = Action()

function aol.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local playerPosition = player:getPosition()	
	player:say("Voce esta indo la!, :)", TALKTYPE_ORANGE_1)
	player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)

	return true
end

aol:id(3057) -- id aol
aol:register()