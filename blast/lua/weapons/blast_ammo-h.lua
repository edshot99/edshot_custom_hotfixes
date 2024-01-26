SWEP.Category				= "TFA Blast! Utility"
SWEP.Author					= "Fesiug"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions			= ""
SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Heavy Ammo"		-- Weapon name (Shown on HUD)	
SWEP.Slot					= 4				-- Slot in the weapon selection menu
SWEP.SlotPos				= 70			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight					= 40			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "slam"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 54
SWEP.ViewModelFlip = false
SWEP.ViewModel				= "models/weapons/cstrike/c_c4.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_slam.mdl"	-- Weapon world model
SWEP.ShowWorldModel			= false
SWEP.Base					= "tfa_gun_base"
SWEP.Spawnable				= false
SWEP.UseHands 				= false
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater 		= false

SWEP.Primary.Sound			= nil		-- Script that calls the primary fire sound
SWEP.Primary.RPM			= 0			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize		= -1		-- Size of a clip
SWEP.Primary.DefaultClip	= 0		-- Bullets you start with
SWEP.Primary.KickUp			= 0		-- Maximum up recoil (rise)
SWEP.Primary.KickDown		= 0		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal	= 0		-- Maximum up recoil (stock)
SWEP.Primary.Automatic		= true		-- Automatic = true; Semi Auto = false
SWEP.FireModeName			= "6 inside"
SWEP.Primary.Ammo			= "357"

SWEP.Secondary.IronFOV		= 90		-- How much you 'zoom' in. Less is more! 	

SWEP.data 					= {}				--The starting firemode
SWEP.data.ironsights		= 0

SWEP.Primary.NumShots		= 0		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage			= 0	-- Base damage per bullet
SWEP.Primary.Spread			= 0	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy 	= 0 -- Ironsight accuracy, should be the same for shotguns

function SWEP:OnRemove()
   if CLIENT and IsValid(self:GetOwner()) and self:GetOwner() == LocalPlayer() and self:GetOwner():Alive() then
      RunConsoleCommand("lastinv")
   end
end

SWEP.VElements = {
	["gun"] = { type = "Model", model = "models/items/357ammo.mdl", bone = "v_weapon.c4", rel = "", pos = Vector(-3.606, 0.259, -2.244), angle = Angle(-44.974, 95.374, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.851, 0.962, 0.919), angle = Angle(-15.808, 63.137, 16.773), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.ViewModelBoneMods = {
	["v_weapon.c4"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.WElements = {
	["box"] = { type = "Model", model = "models/items/357ammo.mdl", bone = "ValveBiped.Anim_Attachment_RH", rel = "", pos = Vector(1.643, -0.101, 0.495), angle = Angle(-89.237, 0, -93.262), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
if CLIENT then return end
function SWEP:PrimaryAttack()
	self.Owner:GiveAmmo( "8", "357" )
	self:Remove()
end