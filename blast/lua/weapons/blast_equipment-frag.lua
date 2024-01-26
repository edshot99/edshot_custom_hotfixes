SWEP.Category				= "TFA Blast! Utility"

SWEP.Author					= "Fesiug"
SWEP.Contact				= ""
SWEP.Purpose				= "Handy hand-grenade. If you see it, run."
SWEP.Instructions			= "Left-click to pull the pin, let go to throw the grenade. It will only start the timer when thrown."
SWEP.Manufacturer 			= "Overwatch Southern Sector"

SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models

SWEP.PrintName				= "Anti-Personnel Explosive"		-- Weapon name (Shown on HUD)
	
SWEP.Slot					= 5				-- Slot in the weapon selection menu
SWEP.SlotPos				= 5			-- Position in the slot

SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter

SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?

SWEP.DrawCrosshair			= true		-- set false if you want no crosshair

SWEP.Weight					= 10			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon

SWEP.HoldType 				= "grenade"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 54
SWEP.ViewModelFlip 			= false

SWEP.ViewModel 				= "models/weapons/cstrike/c_eq_fraggrenade.mdl"
SWEP.WorldModel				= "models/weapons/w_grenade.mdl"	-- Weapon world model

SWEP.Base					= "tfa_nade_base"
SWEP.Primary.Round 			= "blast_frag"

SWEP.Spawnable				= false
SWEP.UseHands				= true
SWEP.FiresUnderwater 		= true

SWEP.Primary.Sound				= Sound("Weapon_M4A1.Silenced")		-- Script that calls the primary fire sound

SWEP.Primary.RPM				= "0"			-- This is in Rounds Per Minute

SWEP.Primary.ClipSize			= 1		-- Size of a clip
SWEP.Primary.DefaultClip		= 1		-- Bullets you start with

SWEP.Primary.KickUp				= 0.1		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1		-- Maximum up recoil (stock)

SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.FireModeName				= "" --Change to a text value to override it
SWEP.Primary.Ammo				= ""

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 						= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots			= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage				= 110	-- Base damage per bullet
SWEP.Primary.Spread				= .01	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy		= .01 -- Ironsight accuracy, should be the same for shotguns

SWEP.DisableChambering			= true
SWEP.Silenced					= false

SWEP.Velocity					= 750

SWEP.Type 						= "grenade"

SWEP.ViewModelBoneMods = {
	["v_weapon.Flashbang_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-2.105, 1.924, -2.037), angle = Angle(0, -100.286, 0.957), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-2.105, 1.366, -1.063), angle = Angle(0, -100.286, 0.957), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["frag"] = { type = "Model", model = "models/weapons/w_grenade.mdl", bone = "v_weapon.Flashbang_Parent", rel = "", pos = Vector(0.556, 5.513, 2.045), angle = Angle(180, 10.633, -80.388), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}


--[[DEFINE_BASECLASS(SWEP.Base)

function SWEP:Deploy( ... )
	BaseClass.Deploy( self, ... )
	if not self:VMIV() then return true end
	self:CleanParticles()
	return true
end

function SWEP:Holster( ... )
	self:CleanParticles()
	return BaseClass.Holster( self, ... )
end

function SWEP:OnRemove( ... )
	self:CleanParticles()
	return BaseClass.OnRemove( self, ... )
end]]