-------------------------------
-------cl_scoreboard.lua-------
--Realm: Client
--Purpose: Build and display a custom scoreboard.
--Net usage: None.
-------------------------------

--DISCLAIMER: Most of this code was taken from the GMod wiki
scoreboard = scoreboard or {}

function scoreboard:show()
		
		local winColor = Color(LocalPlayer():GetPlayerColor().x * 255, LocalPlayer():GetPlayerColor().y * 255, LocalPlayer():GetPlayerColor().z * 255, 200)
		
		local playerlist = vgui.Create("DListView")
		playerlist:SetSize(ScrW() / 1.25, ScrH() / 2.5)
		playerlist:Center()
		playerlist:AddColumn("Name")
		playerlist:AddColumn("K/D Ratio")
		playerlist:AddColumn("Health")
		playerlist:AddColumn("Armor")
		playerlist:AddColumn("Money")
		playerlist:AddColumn("Ping")
		--[[ Line painting ]]--
		for _, v in pairs ( player.GetAll() ) do
			local ratio = v:Frags() / v:Deaths()
			if v:Frags() == 0 and v:Deaths() == 0 then
				ratio = 0
			end
			--[[if ratio == math.huge then
				ratio = v:Frags()
			end]]
			ratio = math.Round(ratio,2)
			local line = playerlist:AddLine( v:Name(), ratio, v:Health(), v:Armor(),"$" .. v:GetNWInt("stmoney"), v:Ping() )
			function line:Paint( w, h )
				draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) )
			end
		end
		
		playerlist:SortByColumn( 2, true )
		
			--[[ Column header painting ]]--
--[[		for _, v in pairs( playerlist.Columns ) do
			function v.Header:Paint( w, h ) 
			draw.RoundedBox( 0, 0, 0, w, h, winColor )
			end
			v.Header:SetTextColor( Color( 255, 255, 255, 255 ) )
		end]]

	function scoreboard:hide()
		playerlist:Remove()
	end
end

function GM:ScoreboardShow()
	scoreboard:show()
end

function GM:ScoreboardHide()
	scoreboard:hide()
end
