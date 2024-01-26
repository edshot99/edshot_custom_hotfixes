
SWEP.Category				= "TFA Blast!"

SWEP.Author					= "Fesiug"
SWEP.Contact				= ""
SWEP.Purpose				= "Generic rifle. Very powerful with its headshots."
SWEP.Instructions			= ""
SWEP.Manufacturer 			= "Overwatch Western Manufacturing"

SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models

SWEP.PrintName				= "M4-A"		-- Weapon name (Shown on HUD)
	
SWEP.Slot					= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 5			-- Position in the slot

SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter

SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?

SWEP.DrawCrosshair			= true		-- set false if you want no crosshair

SWEP.Weight					= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon

SWEP.HoldType 				= "rpg"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 64
SWEP.ViewModelFlip 			= false

SWEP.ViewModel				= "models/weapons/cstrike/c_rif_m4a1.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_rif_m4a1.mdl"	-- Weapon world model

SWEP.Base					= "tfa_gun_base"

SWEP.Spawnable				= false
SWEP.UseHands				= false
SWEP.FiresUnderwater 		= false

SWEP.Primary.Sound				= Sound("Weapon_M4A1.Single")		-- Script that calls the primary fire sound

SWEP.Primary.RPM				= 460			-- This is in Rounds Per Minute

SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.DefaultClip		= 60		-- Bullets you start with

SWEP.Primary.KickUp				= 0.3		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.3		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.2		-- Maximum up recoil (stock)

SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.FireModeName				= "Medium Ammo" --Change to a text value to override it
SWEP.Primary.Ammo				= "smg1"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 						= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots			= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage				= 34	-- Base damage per bullet
SWEP.Primary.Spread				= .0075	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy		= .005 -- Ironsight accuracy, should be the same for shotguns

SWEP.DisableChambering			= true
SWEP.Silenced					= false

SWEP.Type						= "rifle"

SWEP.ViewModelBoneMods = {
	["v_weapon.m4_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-0.978, -4.785, -1.81), angle = Angle(0, 80, -15), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.978, -4.785, -1.81), angle = Angle(0, 80, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["m4a1"] = { type = "Model", model = "models/weapons/w_rif_m4a1.mdl", bone = "v_weapon.m4_Parent", rel = "", pos = Vector(0.72, 3.22, -8.223), angle = Angle(-90, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.MoveSpeed = .9