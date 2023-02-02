local reward_talkaction = TalkAction("!reward")

local config = {
	items = {
		{id = 35284, amount = 1, charges = 10000}, -- exercise wand
		{id = 35283, amount = 1, charges = 10000}, -- exercise rod
        {id = 35282, amount = 1, charges = 10000}, -- exercise distance
		{id = 35280, amount = 1, charges = 10000}, -- exercise axe
		{id = 35279, amount = 1, charges = 10000}, -- exercise axe
        {id = 35281, amount = 1, charges = 10000}, -- exercise club
        
	},
	storage = 33277123,
}

local function sendRewardModal(player)
	if player:getStorageValue(config.storage) > 0 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "Voce ja recebeu sua recompensa!")
		return false
	end
	
	local window = ModalWindow {
		title = "Reward",
		message = 'Escolha uma exercise trainning'
	}
	
	for _, it in pairs(config.items) do
		local iType = ItemType(it.id)
		if iType then
			local choice = window:addChoice(iType:getName())
			choice.itemId = it.id
			choice.amount = it.amount
			choice.charges = it.charges
		end
	end
	
	window:addButton('Ok',
		function(button, choice)
			local iType = ItemType(choice.itemId)
			if player:getFreeCapacity() < iType:getWeight(choice.amount) then
				player:sendTextMessage(MESSAGE_INFO_DESCR, "Verifique se você tem capacidade livre para armazenar este item.")
				return
			end
			
			local inbox = player:getSlotItem(CONST_SLOT_STORE_INBOX)
			if inbox and inbox:getEmptySlots() > 0 then
				local item = inbox:addItem(choice.itemId, choice.charges or choice.amount)
				if item then
					item:setActionId(NOT_MOVEABLE_ACTION)
				else
					player:sendTextMessage(MESSAGE_INFO_DESCR, "Verifique se você tem espaços livres na store inbox.")
					return
				end
				player:sendTextMessage(MESSAGE_INFO_DESCR, "Parabens, voce acabou de receber ".. choice.amount .."x ".. iType:getName() .." como recompensa.")
				player:setStorageValue(config.storage, 1)  -- seta para 1
			else
				player:sendTextMessage(MESSAGE_INFO_DESCR, "Verifique se você tem espaços livres na store inbox.")
			end
		end
	)
	
	window:addButton('Close',
		function(button, choice)
		end
	)
	
	window:setDefaultEnterButton('Close')
	window:setDefaultEscapeButton('Close')
	
	window:sendToPlayer(player)
end

function reward_talkaction.onSay(player, words, param)
	sendRewardModal(player)
	return false
end

reward_talkaction:separator(" ")
reward_talkaction:register()