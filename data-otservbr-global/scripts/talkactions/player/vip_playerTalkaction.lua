local vip = TalkAction("!vip")

function vip.onSay(player, words, param)
	local days = player:getVipDays()
    if days == 0 then
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'Voce nao possui VIP.')
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, string.format('You have %s vip day%s left.', (days == 0xFFFF and 'infinite amount of' or days), (days == 1 and '' or 's')))
    end
    return false
end

vip:register()