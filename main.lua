local Commands = {
    DexV4 = function()
        loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))() --// Made by w a e (Original by Moon)
    end,
    DexV3 = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))() --// Made by HamstaGang / Lego hacker / Modolus / activeware (Original by Moon)
    end,
    SimpleSpy = function()
        loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))() --// Made by exxtremestuffs / jheinem1 / Kan18
    end,
    InfiniteYield = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() --// Edge / Moon / Zwolf / Toon
    end,
    Hydroxide = function()
        local owner = "Upbolt"
        local branch = "revision"

        local function webImport(file)
            return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')() --// Made by Upbolt
        end

        webImport("init")
        webImport("ui/main")
    end
}

game.Players.LocalPlayer.Chatted:Connect(function(message)
    if message:lower() == ".dexv4" then
        Commands:DexV4()
    elseif message:lower() == ".dexv3" then
        Commands:DexV3()
    elseif message:lower() == ".rspy" or message:lower() == ".remotespy" then
        Commands:SimpleSpy()
    elseif message:lower() == ".infyield" or message:lower() == ".admin" or message:lower() == ".infiniteyield" then
        Commands:InfiniteYield()
    elseif message:lower() == ".hydroxide" or message:lower() == ".h" then
        Commands:Hydroxide()
    end
end)
print("loaded!")