
SWEP.Category				= "TFA Blast!"

SWEP.Author					= "Fesiug"
SWEP.Contact				= ""
SWEP.Purpose				= "Pump-action shotgun. Aiming for the neck is a good idea."
SWEP.Instructions			= ""
SWEP.Manufacturer 			= "Overwatch Western Manufacturing"

SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models

SWEP.PrintName				= "SPAS-12M"		-- Weapon name (Shown on HUD)
	
SWEP.Slot					= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 5			-- Position in the slot

SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter

SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?

SWEP.DrawCrosshair			= true		-- set false if you want no crosshair

SWEP.Weight					= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon

SWEP.HoldType 				= "shotgun"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 54
SWEP.ViewModelFlip 			= false

SWEP.ViewModel				= "models/weapons/cstrike/c_shot_xm1014.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_shotgun.mdl"	-- Weapon world model

SWEP.Base					= "tfa_gun_base"

SWEP.Spawnable				= false
SWEP.UseHands				= false
SWEP.FiresUnderwater 		= false

SWEP.Primary.Sound				= Sound("Weapon_Shotgun.Single")		-- Script that calls the primary fire sound

SWEP.Primary.RPM				= 100			-- This is in Rounds Per Minute

SWEP.Primary.ClipSize			= 5		-- Size of a clip
SWEP.Primary.DefaultClip		= 10		-- Bullets you start with

SWEP.Primary.KickUp				= 1		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.2		-- Maximum up recoil (stock)

SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.FireModeName				= "Buckshot" --Change to a text value to override it
SWEP.Primary.Ammo				= "buckshot"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 						= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.VMPos						= Vector(-0.5, 0, -3)

SWEP.Primary.NumShots			= 7		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage				= 7	-- Base damage per bullet
SWEP.Primary.Spread				= .075	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy		= .075 -- Ironsight accuracy, should be the same for shotguns

SWEP.DisableChambering			= true
SWEP.Silenced					= false
SWEP.Shotgun					= true

SWEP.ShellTime	= .4

SWEP.Type						= "shotgun"

SWEP.Primary.Range = 1024 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = .2 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.

--[[SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-0.701, -4.923, -0.487), angle = Angle(0, 80, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "carpet/offflrb", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.398, -2.99, -2.271), angle = Angle(0, 73.031, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["m3"] = { type = "Model", model = "models/weapons/w_shotgun.mdl", bone = "v_weapon.M3_PUMP", rel = "", pos = Vector(0.094, 1.276, 0.072), angle = Angle(81.073, -88.963, -7.536), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.ViewModelBoneMods = {
	["v_weapon.M3_PARENT"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}]]

--[[SWEP.ViewModelBoneMods = {
	["v_weapon.XM1014_PARENT"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-0.686, -4.307, -1.369), angle = Angle(-12.032, 82.841, 3.055), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "carpet/offflrb", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.398, -2.99, -2.271), angle = Angle(0, 73.031, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["m3"] = { type = "Model", model = "models/weapons/w_shotgun.mdl", bone = "v_weapon.M3_PUMP", rel = "", pos = Vector(0.094, 1.187, -1.214), angle = Angle(86.269, -88.502, -7.717), size = Vector(1.2, 1.2, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}]]

SWEP.ViewModelBoneMods = {
	["v_weapon.xm1014_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-2.273, -0.922, -0.959), angle = Angle(-12.032, 82.841, 3.055), size = Vector(0.4, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "carpet/offflrb", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.32, -3.319, -5.191), angle = Angle(0, 73.031, 0), size = Vector(0.4, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["m3"] = { type = "Model", model = "models/weapons/w_shotgun.mdl", bone = "v_weapon.xm1014_Parent", rel = "", pos = Vector(0.595, -4.693, -11.105), angle = Angle(86.269, -88.502, -7.717), size = Vector(1, 1, 0.85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.MoveSpeed = .925

