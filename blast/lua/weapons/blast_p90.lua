
SWEP.Category				= "TFA Blast!"

SWEP.Author					= "Fesiug"
SWEP.Contact				= ""
SWEP.Purpose				= "Extremely fast SMG. Hit your shots or face a long reload."
SWEP.Instructions			= ""
SWEP.Manufacturer 			= "Overwatch Experimental Laboratories"

SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models

SWEP.PrintName				= "Spitter"		-- Weapon name (Shown on HUD)
	
SWEP.Slot					= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 5			-- Position in the slot

SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter

SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?

SWEP.DrawCrosshair			= true		-- set false if you want no crosshair

SWEP.Weight					= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon

SWEP.HoldType 				= "smg"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 64
SWEP.ViewModelFlip 			= false

SWEP.ViewModel				= "models/weapons/cstrike/c_smg_p90.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_smg_p90.mdl"	-- Weapon world model

SWEP.Base					= "tfa_gun_base"

SWEP.Spawnable				= true
SWEP.UseHands				= false
SWEP.FiresUnderwater 		= false

SWEP.Primary.Sound				= Sound("Weapon_P90.Single")		-- Script that calls the primary fire sound

SWEP.Primary.RPM				= 750			-- This is in Rounds Per Minute

SWEP.Primary.ClipSize			= 35		-- Size of a clip
SWEP.Primary.DefaultClip		= 70		-- Bullets you start with

SWEP.Primary.KickUp				= 0.2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1		-- Maximum up recoil (stock)

SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.FireModeName				= "Medium Ammo" --Change to a text value to override it
SWEP.Primary.Ammo				= "smg1"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 						= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots			= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage				= 10	-- Base damage per bullet
SWEP.Primary.Spread				= .01	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy		= .005 -- Ironsight accuracy, should be the same for shotguns

SWEP.DisableChambering			= true
SWEP.Silenced					= false

SWEP.Type 						= "smg"

SWEP.ViewModelBoneMods = {
	["v_weapon.p90_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(0, -1.953, -3.747), angle = Angle(-15.056, 55.925, -7.009), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.281, -2.991, -2.231), angle = Angle(-1.295, 83.723, -2.02), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["gun"] = { type = "Model", model = "models/weapons/w_smg_p90.mdl", bone = "v_weapon.p90_Parent", rel = "", pos = Vector(0.164, 3.836, 3.858), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.MoveSpeed = .875
