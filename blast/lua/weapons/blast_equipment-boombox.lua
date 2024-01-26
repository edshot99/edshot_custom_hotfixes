
SWEP.Category				= "TFA Blast! Utility"

SWEP.Author					= "Fesiug"
SWEP.Contact				= ""
SWEP.Purpose				= "Dangerous tripmine. The detection radius is not a circle, it is a thin laser. Best placed at doorways."
SWEP.Instructions			= "Left-click to throw it."
SWEP.Manufacturer 			= "Overwatch Experimental Laboratories"

SWEP.MuzzleAttachment		= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment	= "2" 	-- Should be "2" for CSS models or "1" for hl2 models

SWEP.PrintName				= "Boombox"		-- Weapon name (Shown on HUD)
	
SWEP.Slot					= 5				-- Slot in the weapon selection menu
SWEP.SlotPos				= 5			-- Position in the slot

SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter

SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false	-- Should the weapon icon bounce?

SWEP.DrawCrosshair			= true		-- set false if you want no crosshair

SWEP.Weight					= 35			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon

SWEP.HoldType 				= "slam"		-- how others view you carrying the weapon

SWEP.ViewModelFOV			= 54
SWEP.ViewModelFlip 			= false

SWEP.ViewModel				= "models/weapons/cstrike/c_c4.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_slam.mdl"	-- Weapon world model

SWEP.Base					= "tfa_knife_base"

SWEP.Spawnable				= false
SWEP.UseHands				= false
SWEP.FiresUnderwater 		= false

SWEP.Primary.Sound				= Sound("weapons/deagle/de_clipout.wav")		-- Script that calls the primary fire sound

SWEP.Primary.RPM				= 600			-- This is in Rounds Per Minute

SWEP.Primary.ClipSize			= 0		-- Size of a clip
SWEP.Primary.DefaultClip		= 0		-- Bullets you start with

SWEP.Primary.KickUp				= 0.1		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.1		-- Maximum up recoil (stock)

SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.FireModeName				= "" --Change to a text value to override it
SWEP.Primary.Ammo				= "none"

SWEP.Secondary.IronFOV			= 55		-- How much you 'zoom' in. Less is more! 	

SWEP.data 						= {}				--The starting firemode
SWEP.data.ironsights			= 0

SWEP.Primary.NumShots			= 1		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage				= 12	-- Base damage per bullet
SWEP.Primary.Spread				= .005	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy		= .005 -- Ironsight accuracy, should be the same for shotguns

SWEP.DisableChambering 			= true
SWEP.Silenced					= false

SWEP.ShowWorldModel = false

SWEP.Type 						= "explosive"

SWEP.ViewModelBoneMods = {
	["v_weapon.c4"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["robloxarm"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(1.085, -2.244, -2.51), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["robloxarm+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.971, -2.921, -1.451), angle = Angle(0, 77, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["gun"] = { type = "Model", model = "models/props_lab/reciever01b.mdl", bone = "v_weapon.c4", rel = "", pos = Vector(-4.158, -0.681, -0.128), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}


function SWEP:PrimaryAttack()
	self:ThrowKnife()
end

function SWEP:ThrowKnife()
	if not IsFirstTimePredicted() then return end
	self:EmitSound(self.Primary.Sound)

	if SERVER then
		local ent = ents.Create("blast_boom_placed")

		if ent:IsValid() then
			ent:SetPos(self:GetOwner():GetShootPos())
			ent:SetAngles(self:GetOwner():EyeAngles())
			ent:SetModel(self.Primary.ProjectileModel or self.WorldModel)
			ent:SetOwner(self:GetOwner())
			ent:SetPhysicsAttacker(self:GetOwner())
			ent:Spawn()
			ent:Activate()
			ent:SetNW2String("ClassName", self:GetClass())
			local phys = ent:GetPhysicsObject()

			if IsValid(phys) then
				phys:SetVelocity(self:GetOwner():GetAimVector() * 1250)
				phys:AddAngleVelocity(Vector(0, 480, 0))
			end

			self:GetOwner():SetAnimation(PLAYER_ATTACK1)
			self:GetOwner():StripWeapon(self:GetClass())
		end
	end
end

SWEP.WElements = {
	["la bomba de mierda"] = { type = "Model", model = "models/props_lab/reciever01b.mdl", bone = "ValveBiped.Anim_Attachment_RH", rel = "", pos = Vector(2.318, -0.164, 1.504), angle = Angle(25.409, 0, 7.249), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}