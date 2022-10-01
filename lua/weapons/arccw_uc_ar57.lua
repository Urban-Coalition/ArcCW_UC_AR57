SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "1Urban Decay"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale = 1
--SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556"
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "RAYCAR-0"
-- AMCAR stands for (american) Colt Assault Rifle, not Carbine!! ~Fesiug
-- shut up retard ~zenith

-- True name --

SWEP.TrueName = "AR-57"

-- Trivia --
SWEP.Trivia_Class = "Personal Defense Weapon"
SWEP.Trivia_Desc = "Esoteric personal defense weapon that mounts to an AR-15 lower receiver. It feeds from P90 magazines attached in place of an actual AR's gas tube, ejecting casings through what would normally be a magwell.\n\nCursed? Blursed? You decide."
SWEP.Trivia_Manufacturer = "Rayter Arms Industries"
SWEP.Trivia_Calibre = "5.7x28mm FN"
SWEP.Trivia_Mechanism = "Blowback"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 2008

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "AR57 LLC"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_uc_ar57.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_uc_ar57.mdl"
SWEP.ViewModelFOV = 80
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --

SWEP.Damage = ArcCW.UC.StdDmg["380acp"].max
SWEP.DamageMin = ArcCW.UC.StdDmg["380acp"].min
SWEP.RangeMin = 50
SWEP.Range = 100

SWEP.Penetration = ArcCW.UC.StdDmg["556"].pen
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 715
SWEP.PhysBulletMuzzleVelocity = 715

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 50

-- Recoil --

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.25

SWEP.RecoilRise = 0.1
SWEP.RecoilPunch = 1
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1
SWEP.RecoilPunchBack = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 900
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120
SWEP.ShootPitchVariation = 0

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 4
SWEP.HipDispersion = 800
SWEP.MoveDispersion = 200
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "smg1"
SWEP.MagID = "m16"

SWEP.HeatCapacity = 150
SWEP.HeatDissipation = 10
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMean = 200
SWEP.MalfunctionTakeRound = false

-- Speed multipliers --

SWEP.SpeedMult = 0.925
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.5
SWEP.ShootSpeedMult = 0.9

-- Length --

SWEP.BarrelLength = 48
SWEP.ExtraSightDist = 2

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.5, -1, 1.2)
SWEP.HolsterAng = Angle(-8.5, 8, -10)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-2.815, 0, 1.3),
     Ang = Angle(0, 0, 4.9),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(-0.2, -1, 0.1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 25, 0)

SWEP.CrouchPos = Vector(-2.5, -2, -0.6)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.BarrelOffsetHip = Vector(2, 0, -5)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-8.1, 4, -6.5),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    --scale = .85
}

-- Firing sounds --

local path = ")^weapons/arccw_ud/m16/"
local common = ")^/arccw_uc/common/"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.FirstShootSoundSilenced = {
    path .. "fire-first-sup-01.ogg",
    path .. "fire-first-sup-02.ogg",
    path .. "fire-first-sup-03.ogg",
    path .. "fire-first-sup-04.ogg",
    path .. "fire-first-sup-05.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "fire-sup-01.ogg",
    path .. "fire-sup-02.ogg",
    path .. "fire-sup-03.ogg",
    path .. "fire-sup-04.ogg",
    path .. "fire-sup-05.ogg"
}

SWEP.DistantShootSound = nil
SWEP.DistantShootSoundSilenced = nil
SWEP.ShootDrySound = path .. "dryfire.ogg"

SWEP.DistantShootSoundOutdoors = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    common .. "fire-dist-int-rifle-01.ogg",
    common .. "fire-dist-int-rifle-02.ogg",
    common .. "fire-dist-int-rifle-03.ogg",
    common .. "fire-dist-int-rifle-04.ogg",
    common .. "fire-dist-int-rifle-05.ogg",
    common .. "fire-dist-int-rifle-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup_tail.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "sup_tail.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

-- Bodygroups --

-- SWEP.BulletBones = {
--     [2] = "m16_bullets1",    [3] = "m16_bullets2"
-- }

SWEP.DefaultBodygroups = "00000000000000000000000"

SWEP.AttachmentElements = {

}

-- Animations --

SWEP.Hook_Think = ArcCW.UC.ADSReload

local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}

SWEP.Animations = {
    ["ready"] = {
        Source = "ready",
        Time = 77 / 37,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "rattle.ogg", t = 0.2},
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.5},
        },
        ProcDraw = true,
    },
    ["idle"] = {
        Source = "idle",
    },
    
    ["draw"] = {
        Source = "draw",
        SoundTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = ratel, t = 0.2},
        },
    },
    
    ["holster"] = {
        Source = "holster",
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    
    ["fire"] = {
        Source = "fire",
        Time = 15 / 37,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },

    ["fix"] = {
        Source = "fix",
        Time = 45 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.5},
        },
    },

    -- 30 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 135 / 37,
        MinProgress = 1.5,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.7,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch_gear.ogg", t = 0.2, v = 0.5},
            {s = ratel, t = 0.25},
            {s = path .. "magout_empty.ogg", 	 t = 0.23},
            {s = ratel, t = 0.5},
            {s = path .. "struggle.ogg",    t = 1, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.97},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = common .. "grab-polymer.ogg", t = 1.77, v = 0.25},
            {s = common .. "rattle_b2i_rifle.ogg", t = 1.7},
            {s = common .. "shoulder.ogg", t = 1.8},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 166 / 37,
        MinProgress = 2,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.4,
        LHIKOut = 0.9,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.25},
            {s = common .. "magpouch_gear.ogg", t = 0.1, v = 0.5},
            {s = path .. "magout_empty.ogg", 	 t = 0.2},
            {s = ratel, t = 0.5},
            {s = common .. "rifle_magdrop.ogg",  t = 0.65},
            {s = path .. "struggle.ogg",    t = 0.95, v = 0.4},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.7},
            {s = ratel, t = 1.9},
            {s = common .. "rattle_b2i_rifle.ogg", t = 2.0},
            {s = common .. "grab-polymer.ogg", t = 2.1, v = 0.35},
            {s = common .. "shoulder.ogg", t = 2.1},
        },
    },


    ["enter_inspect"] = {
        Source = "inspect_enter",
        -- time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        SoundTable = {
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        -- time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        -- time = 66 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
            -- { s = rottle, t = 0 / 60, c = ca },
            -- { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            -- { s = path .. "magout.ogg", t = 8 / 60, c = ca },
            -- { s = rottle, t = 100 / 60, c = ca },
            -- { s = path .. "magin_miss.ogg", t = 106 / 60, c = ca },
            -- { s = path .. "magin_old.ogg", t = 114 / 60, c = ca },
            -- { s = path .. "rack1.ogg", t = 155 / 60, c = ca },
            -- { s = rottle, t = 160 / 60, c = ca },
            -- { s = path .. "rack2.ogg", t = 178 / 60, c = ca },
        },
    },
}


SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        InstalledEles = {"upper_flat"},
        Slot = {"optic","optic_sniper","ud_m16_rs"},
        Bone = "weapon",
        Offset = {
            vpos = Vector(0, -1.75, 3),
            vang = Angle(90, 0, -90),
        },
        SlideAmount = {
            vmin = Vector(0, -1.6, 3 - 2),
            vmax = Vector(0, -1.6, 3 + 1),
        },
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "20\" Standard Barrel",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_barrel_20.png", "smooth mips"),
        Slot = "ud_m16_blen",
        Bone = "weapon",
        Offset = {
            vpos = Vector(2.8, -4.2, -11.5),
            vang = Angle(90, 0, -90),
        },
    },
    -- {
    --     PrintName = "Handguard",
    --     DefaultAttName = "Ribbed Handguard",
    --     DefaultAttIcon = Material("entities/att/acwatt_ud_m16_hg_ribbed.png", "smooth mips"),
    --     Slot = "ud_m16_hg",
    --     Bone = "weapon",
    --     Offset = {
    --         vpos = Vector(0, -1.63, -0.41),
    --         vang = Angle(90, 0, -90),
    --     },
    --     ExcludeFlags = {"sd"}
    -- },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle", "ud_m16_muzzle"},
        Bone = "weapon",
        VMScale = Vector(1, 1, 1),
        WMScale = VMScale,
        Offset = {
            vpos = Vector(0, -.33, 23.57),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"sd", "m16_stub"},
    },
    -- {
    --     PrintName = "Upper Receiver",
    --     DefaultAttName = "5.56x45mm Upper",
    --     DefaultAttIcon = Material("entities/att/uc_bullets/556x45.png", "smooth mips"),
    --     Slot = {"ud_m16_receiver"},
    --     Bone = "weapon",
    --     Offset = {
    --         vpos = Vector(2.8, -4.2, -11.5),
    --         vang = Angle(90, 0, -90),
    --     },
    --     ExcludeFlags = {"ud_m16_fpw"}
    -- },
    -- {
    --     PrintName = "Lower Receiver",
    --     DefaultAttName = "Burst Lower",
    --     DefaultAttIcon = Material("entities/att/acwatt_ud_m16_receiver_default.png", "smooth mips"),
    --     Slot = {"ud_m16_fcg"},
    --     Bone = "weapon",
    --     Offset = {
    --         vpos = Vector(2.8, -4.2, -11.5),
    --         vang = Angle(90, 0, -90),
    --     },
    --     ExcludeFlags = {"m16_nolower"}
    -- },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "weapon",
        Offset = {
            vpos = Vector(0, 6, 11),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"rail_fg"},
        ExcludeFlags = {"m16_lmg", "m16_stub"},
        SlideAmount = {
            vmin = Vector(0, .65, 11.5),
            vmax = Vector(0, .65, 7.5),
        },
		MergeSlots = {18},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "weapon",
        Offset = {
            vpos = Vector(0, 0.3, 21.25),
            vang = Angle(90, 0, -90),
        },
        GivesFlags = {"tac"},
        --InstalledEles = {"ud_m16_clamp_fullsize"}
    },
    {
        PrintName = "Grip Type",
        Slot = {"ud_m16_grip"},
        DefaultAttName = "Standard Grip",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_grip_default.png", "smooth mips"),
        ExcludeFlags = {"m16_adar"}
    },
    {
        PrintName = "Stock",
        Slot = {"ud_m16_stock","go_stock"},
        DefaultAttName = "Full Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_stock_default.png", "smooth mips"),
        -- GSO support
        InstalledEles = {"stock_231_tube"},
        Bone = "weapon",
        Offset = {
            vpos = Vector(-0.02, 0, -3.25),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(1.16, 1.16, 1.16),
    },
    -- {
    --     PrintName = "Magazine",
    --     Slot = {"ud_m16_mag"},
    --     DefaultAttName = "30-Round Mag",
    --     DefaultAttIcon = Material("entities/att/acwatt_ud_m16_mag_30.png", "smooth mips"),
    -- },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
        DefaultAttIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Slot = "uc_ammo",
    },
    {
        PrintName = "Powder Load",
        Slot = "uc_powder",
        DefaultAttName = "Standard Load"
    },
    {
        PrintName = "Training Package",
        Slot = "uc_tp",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "uc_fg", -- Fire group
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Front Sight",
        Slot = {"ud_m16_fs", "ud_m16_charm"},
        FreeSlot = true,
        Bone = "weapon",
        Offset = {
            vpos = Vector(0, -1.65, 16.75), -- 21.75 or 15.75
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"sight_magpul"}
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"}, -- "ud_m16_charm"
        FreeSlot = true,
        Bone = "weapon",
        Offset = {
            vpos = Vector(0.48, 0.5, 3.9),
            vang = Angle(90, 0, -90),
        },
        -- MergeSlots = {17}
    },
    {
        PrintName = "M203 slot",
        Slot = "uc_ubgl",
        Bone = "weapon",
        Offset = {
            vpos = Vector(0, -0.4, 7.2),
            vang = Angle(90, 0, -90),
        },
        Hidden = true,
        InstalledEles = {"rail_fg"},
        ExcludeFlags = {"m16_lmg", "m16_stub"},
    }
}