
SWEP.Category				= "TFA Blast!"

SWEP.Author					= "Fesiug"
SWEP.Contact				= ""
SWEP.Purpose				= "Semi-automatic sniper rifle. Any unarmored indiviuial is taken down by a headshot."
SWEP.Instructions			= "Right-click to scope in."
SWEP.Manufacturer 			= "Overwatch Western Manufacturing"

SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models

SWEP.PrintName				= "G4SG1"		-- Weapon name (Shown on HUD)
	
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

SWEP.ViewModel				= "models/weapons/cstrike/c_rif_sg552.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_snip_g3sg1.mdl"	-- Weapon world model

SWEP.Base					= "tfa_gun_base"

SWEP.Spawnable				= false
SWEP.UseHands				= false
SWEP.FiresUnderwater 		= false

SWEP.Primary.Sound				= Sound("Weapon_G3SG1.Single")		-- Script that calls the primary fire sound

SWEP.Primary.RPM				= 150			-- This is in Rounds Per Minute

SWEP.Primary.ClipSize			= 4		-- Size of a clip
SWEP.Primary.DefaultClip		= 4		-- Bullets you start with

SWEP.Primary.KickUp				= 2		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 2		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= .2		-- Maximum up recoil (stock)

SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.FireModeName				= "Heavy Ammo" --Change to a text value to override it
SWEP.Primary.Ammo				= "357"

SWEP.Secondary.IronFOV			= 40		-- How much you 'zoom' in. Less is more! 	

SWEP.data 						= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots			= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage				= 75	-- Base damage per bullet
SWEP.Primary.Spread				= .025	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy		= .001 -- Ironsight accuracy, should be the same for shotguns

SWEP.DisableChambering			= true
SWEP.Silenced					= false
SWEP.Primary.PenetrationMultiplier = 5 --Change the amount of something this gun can penetrate through
SWEP.IronInSound = Sound("Default.Zoom") --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = Sound("Default.Zoom") --Sound to play when ironsighting out?  nil for default


SWEP.Type						= "sniper"

--[[SWEP.ViewModelBoneMods = {
	["v_weapon.MP5_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.MP5_clip"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.MP5_bolt"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-2.81, 0.906, 4.328), angle = Angle(86.708, -82.528, -14.289), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-1.303, 1.633, 4.328), angle = Angle(86.708, -82.528, -31.042), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["gun"] = { type = "Model", model = "models/weapons/w_snip_g3sg1.mdl", bone = "v_weapon.MP5_Parent", rel = "", pos = Vector(0.433, 3.502, -10.122), angle = Angle(-90, 90, 0), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}]]

SWEP.ViewModelBoneMods = {
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-0.463, 0.652, 0.462), angle = Angle(18.756, -111.787, 4.451), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.308, 1.519, -2.217), angle = Angle(3.334, -111.862, 4.451), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["gun"] = { type = "Model", model = "models/weapons/w_snip_g3sg1.mdl", bone = "v_weapon.sg552_Parent", rel = "", pos = Vector(0.354, 2.49, -8.983), angle = Angle(-90, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.MoveSpeed = .825