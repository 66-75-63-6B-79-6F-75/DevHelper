--[[
CONGRATULATIONS IT APPEARS YOUVE FOUND THE ONLY UNOBFUSCATED CODE IN THE HUB!!!!! (other than the ui lib)
]]

local function AddGame(Url, GameId)
  if game.PlaceId == GameId then
    loadstring(game:HttpGet(tostring(Url), true))()
  end
end

AddGame("https://pst.klgrth.io/paste/pypu3/raw", 3823781113)
