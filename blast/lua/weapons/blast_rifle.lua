
SWEP.Category				= "TFA Blast!"

SWEP.Author					= "Fesiug"
SWEP.Contact				= ""
SWEP.Purpose				= "A hunting rifle."
SWEP.Instructions			= ""
SWEP.Manufacturer 			= "Resistance Reserves"

SWEP.MuzzleAttachment		= "muzzle" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "1" 	-- Should be "2" for CSS models or "1" for hl2 models

SWEP.PrintName				= "Winchester C-Class"		-- Weapon name (Shown on HUD)
	
SWEP.Slot					= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 5			-- Position in the slot

SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter

SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?

SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.DrawCrosshairIS		= true

SWEP.Weight					= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon

SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 54
SWEP.ViewModelFlip 			= false

SWEP.ViewModel				= "models/weapons/c_shotgun.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_annabelle.mdl"	-- Weapon world model

SWEP.BoltAction				= true
SWEP.BoltTimerOffset 		= .2		--How long you stay sighted in after shooting, with a bolt action.

SWEP.EventTable = {
	[ACT_VM_PRIMARYATTACK] = {
		{ ["time"] = 0.333, ["type"] = "lua", ["value"] = function( wep ) wep:SendWeaponAnim(ACT_SHOTGUN_PUMP) end, ["client"] = true, ["server"] = true },
		{ ["time"] = 0.333, ["type"] = "lua", ["value"] = function( wep ) wep.Owner:EmitSound("weapons/alyx_gun/alyx_shotgun_cock1.wav") end, ["client"] = false, ["server"] = true }
	},
	[ACT_VM_RELOAD] = {
		{ ["time"] = 0, ["type"] = "lua", ["value"] = function( wep ) wep.Owner:EmitSound("weapons/357/357_reload3.wav") end, ["client"] = false, ["server"] = true }
	}
}

SWEP.Base					= "tfa_gun_base"

SWEP.Spawnable				= false
SWEP.UseHands				= false
SWEP.FiresUnderwater 		= false

SWEP.Primary.Sound				= Sound("weapons/shotgun/shotgun_dbl_fire.wav")		-- Script that calls the primary fire sound

SWEP.Primary.RPM				= 60			-- This is in Rounds Per Minute

SWEP.Primary.ClipSize			= 4		-- Size of a clip
SWEP.Primary.DefaultClip		= 4		-- Bullets you start with

SWEP.Primary.KickUp				= 3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= .2		-- Maximum up recoil (stock)

SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.FireModeName				= "Heavy Ammo" --Change to a text value to override it
SWEP.Primary.Ammo				= "357"
SWEP.VMPos						= Vector(-1,0,1)

SWEP.Secondary.IronFOV			= 65		-- How much you 'zoom' in. Less is more! 	

SWEP.data 						= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots			= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage				= 60	-- Base damage per bullet
SWEP.Primary.Spread				= .01	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy		= .005 -- Ironsight accuracy, should be the same for shotguns

SWEP.DisableChambering			= true
SWEP.Silenced					= false
SWEP.Primary.PenetrationMultiplier = 3 --Change the amount of something this gun can penetrate through

SWEP.Type						= "sniper"
SWEP.Shotgun					= true

SWEP.ShellTime	= .333


SWEP.ViewModelBoneMods = {
	["v_weapon.M3_PARENT"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.xm1014_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Gun"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-2.273, -0.922, -0.959), angle = Angle(-12.032, 82.841, 3.055), size = Vector(0.4, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "carpet/offflrb", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.32, -3.319, -5.191), angle = Angle(0, 73.031, 0), size = Vector(0.4, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["m3"] = { type = "Model", model = "models/weapons/w_annabelle.mdl", bone = "ValveBiped.Pump", rel = "", pos = Vector(-0.315, 1.087, 0.019), angle = Angle(-94.608, 94.153, -2.037), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["ammo"] = { type = "Model", model = "models/shells/shell_338mag.mdl", bone = "ValveBiped.square", rel = "", pos = Vector(0, 0.079, -1.078), angle = Angle(90, 0, 0), size = Vector(1.2, 2, 2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}



SWEP.MoveSpeed = .9

SWEP.IronSightsPos = Vector(-6.87, -7.961, 2.96)
SWEP.IronSightsAng = Vector(1.843, 1.998, -0.478)