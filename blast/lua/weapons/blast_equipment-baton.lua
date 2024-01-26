
SWEP.Category				= "TFA Blast! Utility"

SWEP.Author					= "Fesiug"
SWEP.Contact				= ""
SWEP.Purpose				= "Stunbaton used by police. Hitting the head deals more damage."
SWEP.Instructions			= "Left-click to swing. Right-click to throw it."
SWEP.Manufacturer 			= "Civil Protection Division"

SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models

SWEP.PrintName				= "Zap! Baton"		-- Weapon name (Shown on HUD)
	
SWEP.Slot					= 0				-- Slot in the weapon selection menu
SWEP.SlotPos				= 5			-- Position in the slot

SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter

SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?

SWEP.DrawCrosshair			= true		-- set false if you want no crosshair

SWEP.Weight					= 15			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon

SWEP.HoldType 				= "melee"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 64
SWEP.ViewModelFlip 			= false

SWEP.ViewModel				= "models/weapons/c_stunstick.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_stunbaton.mdl"	-- Weapon world model

SWEP.Base					= "tfa_knife_base"

SWEP.Spawnable				= true
SWEP.UseHands				= false
SWEP.FiresUnderwater 		= false

SWEP.Primary.RPM = 60 --Primary Slashs per minute
SWEP.Secondary.RPM = 60 --Secondary stabs per minute
SWEP.Primary.Delay = 0 --Delay for hull (primary)
SWEP.Secondary.Delay = 0 --Delay for hull (secondary)
SWEP.Primary.Damage = 45
SWEP.Secondary.Damage = 60

SWEP.Primary.ClipSize			= -1		-- Size of a clip
SWEP.Primary.DefaultClip		= 0		-- Bullets you start with

SWEP.Primary.KickUp				= 0.1		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1		-- Maximum up recoil (stock)

SWEP.Primary.Automatic			= true		-- Automatic = true; Semi Auto = false
SWEP.FireModeName				= "" --Change to a text value to override it
SWEP.Primary.Ammo				= "none"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 						= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots			= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Spread				= .005	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy		= .005 -- Ironsight accuracy, should be the same for shotguns

SWEP.DisableChambering 			= true
SWEP.Silenced					= false

SWEP.Primary.Sound = "Weapon_StunStick.Swing"-- Sound("Weapon_Knife.Slash") --Sounds
SWEP.KnifeShink = "Weapon_StunStick.Melee_HitWorld"--"Weapon_Knife.HitWall" --Sounds
SWEP.KnifeSlash = "Weapon_StunStick.Melee_HitWorld"--"Weapon_Knife.Hit" --Sounds
SWEP.KnifeStab = "Weapon_StunStick.Melee_HitWorld"--"Weapon_Knife.Slash" --Sounds

SWEP.Primary.Length = 96
SWEP.Secondary.Length = 100

SWEP.SlashTable = {"misscenter1", "misscenter2"} --Table of possible hull sequences
SWEP.SlashMissTable = {"hitcenter1", "hitcenter2", "hitcenter3"} --Table of possible hull sequences
SWEP.StabTable = {"hitcenter1", "hitcenter2", "hitcenter3"} --Table of possible hull sequences
SWEP.StabMissTable = {"misscenter1", "misscenter2"} --Table of possible hull sequences

SWEP.Type 						= "melee"

SWEP.VElements = {
	["robloxarm2"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.971, -1.764, -1.931), angle = Angle(0, 77, 0), size = Vector(0.3, 0.3, 0.3), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

function SWEP:SecondaryAttack()
	self:ThrowKnife()
end