
SWEP.Category				= "TFA Blast!"

SWEP.Author					= "Fesiug"
SWEP.Contact				= ""
SWEP.Purpose				= "Heavy sidearm. Mashing the trigger mostly proves ineffective."
SWEP.Instructions			= ""
SWEP.Manufacturer 			= "Overwatch Southern Sector"

SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models

SWEP.PrintName				= "Nighthawk"		-- Weapon name (Shown on HUD)
	
SWEP.Slot					= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 5			-- Position in the slot

SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter

SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?

SWEP.DrawCrosshair			= true		-- set false if you want no crosshair

SWEP.Weight					= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon

SWEP.HoldType 				= "revolver"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 54
SWEP.ViewModelFlip 			= false

SWEP.ViewModel				= "models/weapons/cstrike/c_pist_deagle.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_pist_deagle.mdl"	-- Weapon world model

SWEP.Base					= "tfa_gun_base"

SWEP.Spawnable				= false
SWEP.UseHands				= false
SWEP.FiresUnderwater 		= false

SWEP.Primary.Sound				= Sound("Weapon_357.Single")		-- Script that calls the primary fire sound

SWEP.Primary.RPM				= 300			-- This is in Rounds Per Minute

SWEP.Primary.ClipSize			= 8		-- Size of a clip
SWEP.Primary.DefaultClip		= 8		-- Bullets you start with

SWEP.Primary.KickUp				= 1.5		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1.6	-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 1.5		-- Maximum up recoil (stock)

SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.FireModeName				= "Heavy Ammo" --Change to a text value to override it
SWEP.Primary.Ammo				= "357"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 						= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots			= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage				= 67	-- Base damage per bullet
SWEP.Primary.Spread				= .005	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy		= .03 -- Ironsight accuracy, should be the same for shotguns

SWEP.DisableChambering 			= true
SWEP.Silenced					= false

SWEP.Type 						= "pistol"

SWEP.Primary.SpreadMultiplierMax = 3.5 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 2 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 1.5 --How much the spread recovers, per second.

--[[SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-0.127, -1.122, -0.857), angle = Angle(0, 90, 0), size = Vector(0.3, 0.3, 0.3), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
--	["gun"] = { type = "Model", model = "models/weapons/w_pist_usp_silencer.mdl", bone = "v_weapon.USP_Parent", rel = "", pos = Vector(0.159, 2.16, 2.309), angle = Angle(-90, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["robloxarm2"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.971, -1.764, -1.931), angle = Angle(0, 77, 0), size = Vector(0.3, 0.3, 0.3), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}]]

--[[SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(0, -1.69, -2.665), angle = Angle(3.059, 93.472, -24.372), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["gun"] = { type = "Model", model = "models/weapons/w_pist_deagle.mdl", bone = "v_weapon.Deagle_Parent", rel = "", pos = Vector(0, 2.121, 2.348), angle = Angle(-90, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["robloxarm2"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 1.493, -1.976), angle = Angle(0, -106.024, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}]]

SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(0.879, -2.01, -2.906), angle = Angle(3.059, 94.575, -38.417), size = Vector(0.5, 0.5, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["gun"] = { type = "Model", model = "models/weapons/w_pist_deagle.mdl", bone = "v_weapon.Deagle_Parent", rel = "", pos = Vector(-0.401, 2.043, 1.547), angle = Angle(-90, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["robloxarm2"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 1.493, -1.976), angle = Angle(0, -106.024, 0), size = Vector(0.4, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.ViewModelBoneMods = {
	["v_weapon.Deagle_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.MoveSpeed = .925