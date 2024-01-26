
local gm = engine.ActiveGamemode()

if gm == "terrortown" then
	RunConsoleCommand("mapcyclefile", "mapcycle_terrortown.txt")
elseif gm == "prop_hunt" then
	RunConsoleCommand("mapcyclefile", "mapcycle_prop_hunt.txt")
elseif gm == "deathrun" then
	RunConsoleCommand("mapcyclefile", "mapcycle_deathrun.txt")
elseif gm == "melonracer" then
	RunConsoleCommand("mapcyclefile", "mapcycle_melonracer.txt")
elseif gm == "melonbomber" then
	RunConsoleCommand("mapcyclefile", "mapcycle_melonbomber.txt")
elseif gm == "suicidebarrels" then
	RunConsoleCommand("mapcyclefile", "mapcycle_suicidebarrels.txt")
elseif gm == "garryware13" then
	RunConsoleCommand("mapcyclefile", "mapcycle_garryware13.txt")
elseif gm == "blast" then
	RunConsoleCommand("mapcyclefile", "mapcycle_blast.txt")
	resource.AddWorkshop("1526407351")
	resource.AddWorkshop("2840031720")
	timer.Simple(3.0, function() RunConsoleCommand("sv_gravity", "100") end)
elseif gm == "flood" then
	RunConsoleCommand("mapcyclefile", "mapcycle_flood.txt")
else
	RunConsoleCommand("mapcyclefile", "mapcycle.txt")
end

