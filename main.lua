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



rconsoleprint("loading...")

while true do
    rconsoleclear()
    rconsoleprint("Commands:\n- dexv4\n- dexv3\n- remotespy\n- infyield / admin\n- hydroxide\nInput: ")
    local newinput = rconsoleinput()

    if tostring(newinput) == "dexv4" then
        Commands:DexV4()
    elseif tostring(newinput) == "dexv3" then
        Commands:DexV3()
    elseif tostring(newinput) == "rspy" or tostring(newinput) == "remotespy" or tostring(newinput) == "simplespy" then
        Commands:SimpleSpy()
    elseif tostring(newinput) == "hydroxide" then
        Commands:Hydroxide()
    elseif tostring(newinput) == "admin" or tostring(newinput) == "infyield" then
        Commands:InfiniteYield()
    else
        rconsoleprint("\nInvalid input!")
        task.wait(2)
    end
    print(newinput)
end
