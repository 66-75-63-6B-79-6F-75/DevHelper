local function LoadUrl(Url, GameId)
  if game.PlaceId == GameId then
    loadstring(game:HttpGet(tostring(Url), true))()
  end
end

