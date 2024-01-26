
SWEP.Category				= "TFA Blast!"

SWEP.Author					= "Fesiug"
SWEP.Contact				= ""
SWEP.Purpose				= "Heavy caliber sniper rifle. Can destroy anyone's stomach at a blink. Highly inaccurate unscoped."
SWEP.Instructions			= "Right-click to scope in."
SWEP.Manufacturer 			= "Overwatch Western Manufacturing"

SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models

SWEP.PrintName				= "RWP"		-- Weapon name (Shown on HUD)
	
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

SWEP.ViewModel				= "models/weapons/cstrike/c_snip_sg550.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_snip_awp.mdl"	-- Weapon world model

SWEP.Base					= "tfa_gun_base"

SWEP.Spawnable				= false
SWEP.UseHands				= false
SWEP.FiresUnderwater 		= false

SWEP.Primary.Sound				= Sound("Weapon_AWP.Single")		-- Script that calls the primary fire sound

SWEP.Primary.RPM				= 650			-- This is in Rounds Per Minute

SWEP.Primary.ClipSize			= 1		-- Size of a clip
SWEP.Primary.DefaultClip		= 1		-- Bullets you start with

SWEP.Primary.KickUp				= 5		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 5		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= .2		-- Maximum up recoil (stock)

SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.FireModeName				= "Heavy Ammo" --Change to a text value to override it
SWEP.Primary.Ammo				= "357"

SWEP.Secondary.IronFOV			= 30		-- How much you 'zoom' in. Less is more! 	

SWEP.data 						= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots			= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage				= 175	-- Base damage per bullet
SWEP.Primary.Spread				= .5	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy		= .001 -- Ironsight accuracy, should be the same for shotguns

SWEP.DisableChambering			= true
SWEP.Silenced					= false
SWEP.Primary.PenetrationMultiplier = 5 --Change the amount of something this gun can penetrate through
SWEP.IronInSound = Sound("Default.Zoom") --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = Sound("Default.Zoom") --Sound to play when ironsighting out?  nil for default

SWEP.Type						= "sniper"

SWEP.ViewModelBoneMods = {
	["v_weapon.sg550_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(0, -4.139, -1.866), angle = Angle(-14.685, 76.962, -28.517), size = Vector(0.5, 0.699, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.463, -2.431, -2.313), angle = Angle(-11.386, 86.702, 2.269), size = Vector(0.5, 0.699, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["gun"] = { type = "Model", model = "models/weapons/w_snip_awp.mdl", bone = "v_weapon.sg550_Parent", rel = "", pos = Vector(0, 2.94, -6.651), angle = Angle(-90, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
--	["gun"] = { type = "Model", model = "models/weapons/cstrike/c_snip_awp.mdl", bone = "v_weapon.sg550_Parent", rel = "", pos = Vector(-6.757, -10.093, 15.819), angle = Angle(-90, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.MoveSpeed = .8
SWEP.IronSightsMoveSpeed = 0.7