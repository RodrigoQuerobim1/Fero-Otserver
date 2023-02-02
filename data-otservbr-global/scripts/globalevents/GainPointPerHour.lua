local tournamentCoin = Action()

function tournamentCoin.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local tournamentCoins = 10
  db.query("UPDATE `accounts` SET `tournament_coins` = `tournament_coins` + '" .. tournamentCoins .. "' WHERE `id` = '" .. player:getAccountId() .. "';")
  player:sendTextMessage(MESSAGE_INFO_DESCR, "You received "..tournamentCoins.." Tournament Coins.")
  item:remove(10)
  return true
end

tournamentCoin:id(22118) --- Item ID
tournamentCoin:register()