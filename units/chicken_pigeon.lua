unitDef = {
  unitname            = [[chicken_pigeon]],
  name                = [[Pigeon]],
  description         = [[Flying Spore Scout]],
  acceleration        = 0.8,
  amphibious          = true,
  bankscale           = [[1]],
  brakeRate           = 0.4,
  buildCostEnergy     = 0,
  buildCostMetal      = 0,
  builder             = false,
  buildPic            = [[chicken_pigeon.png]],
  buildTime           = 50,
  canFly              = true,
  canGuard            = true,
  canLand             = true,
  canMove             = true,
  canPatrol           = true,
  canstop             = true,
  canSubmerge         = false,
  category            = [[FIXEDWING]],
  collide             = false,
  cruiseAlt           = 200,

  customParams        = {
    description_fr = [[Scout volant]],
	description_de = [[Fliegender Spore Scout]],
	description_pl = [[Latajacy zwiadowca]],
    helptext       = [[A small flying chicken scout with spore.]],
    helptext_fr    = [[Le Pigeon est une unit? a?rienne l?g?re mais dot?e d'une attaque ? mi chemin entre la bombe et le missile guid? provoquant des dommages non n?gligeables.]],
	helptext_de    = [[Ein kleiner, fliegender Chickenaufklärer mit Sporen.]],
	helptext_pl    = [[Maly latajacy kurczak zwiadowczy, ktory moze wypuszczac zarodniki.]],
  },

  explodeAs           = [[NOWEAPON]],
  floater             = true,
  footprintX          = 1,
  footprintZ          = 1,
  iconType            = [[scoutplane]],
  idleAutoHeal        = 20,
  idleTime            = 300,
  mass                = 69,
  maxDamage           = 150,
  maxSlope            = 18,
  maxVelocity         = 10,
  moverate1           = [[32]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB STUPIDTARGET]],
  objectName          = [[chicken_pigeon.s3o]],
  power               = 50,
  seismicSignature    = 0,
  selfDestructAs      = [[NOWEAPON]],
  separation          = [[0.2]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:blood_spray]],
      [[custom:blood_explode]],
      [[custom:dirt]],
    },

  },

  side                = [[THUNDERBIRDS]],
  sightDistance       = 512,
  smoothAnim          = true,
  turnRate            = 6000,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[BOGUS_BOMB]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },


    {
      def                = [[SPORES]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 120,
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    BOGUS_BOMB = {
      name                    = [[BogusBomb]],
      areaOfEffect            = 80,
      burst                   = 1,
      burstrate               = 1,
      commandfire             = true,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 0,
      },

      dropped                 = true,
      edgeEffectiveness       = 0,
      explosionGenerator      = [[custom:NONE]],
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      manualBombSettings      = true,
      model                   = [[]],
      myGravity               = 1000,
      noSelfDamage            = true,
      range                   = 10,
      reloadtime              = 2,
      scale                   = [[0]],
      weaponType              = [[AircraftBomb]],
    },


    SPORES     = {
      name                    = [[Spores]],
      areaOfEffect            = 24,
      avoidFriendly           = false,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 75,
        subs    = 3.75,
      },

      dance                   = 60,
      dropped                 = 1,
      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 0,
      fixedlauncher           = 1,
      flightTime              = 5,
      groundbounce            = 1,
      heightmod               = 0.5,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[chickeneggpink.s3o]],
      range                   = 600,
      reloadtime              = 4,
      smokedelay              = [[0.1]],
      smokeTrail              = true,
      startsmoke              = [[1]],
      startVelocity           = 100,
      texture1                = [[]],
      texture2                = [[sporetrail]],
      tolerance               = 10000,
      tracks                  = true,
      turnRate                = 24000,
      turret                  = true,
      waterweapon             = false,
      weaponAcceleration      = 100,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 500,
      wobble                  = 32000,
    },

  },

}

return lowerkeys({ chicken_pigeon = unitDef })
