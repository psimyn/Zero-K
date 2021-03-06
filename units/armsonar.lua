unitDef = {
  unitname          = [[armsonar]],
  name              = [[Sonar Station]],
  description       = [[Locates Water Units]],
  activateWhenBuilt = true,
  buildCostEnergy   = 40,
  buildCostMetal    = 40,
  builder           = false,
  buildPic          = [[ARMSONAR.png]],
  buildTime         = 40,
  canAttack         = false,
  category          = [[UNARMED FLOAT]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[32 48 32]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[CylY]],
  corpse            = [[DEAD]],
  energyUse         = 0.5,
  explodeAs         = [[SMALL_BUILDINGEX]],
  floater           = true,
  footprintX        = 2,
  footprintZ        = 2,
  iconType          = [[sonar]],
  idleAutoHeal      = 5,
  idleTime          = 1800,
  maxDamage         = 300,
  maxSlope          = 18,
  minCloakDistance  = 150,
  minWaterDepth     = 10,
  objectName        = [[novasonar.s3o]],
  onoffable         = true,
  seismicSignature  = 4,
  selfDestructAs    = [[SMALL_BUILDINGEX]],
  sightDistance     = 500,
  sonarDistance     = 600,
  waterLine         = 0,
  yardMap           = [[oo oo]],
  
  customParams                  = {
    description_de = [[Ortet Einheiten unter Wasser]],
    description_pl = [[Wykrywa jednostki podwodne]],
    helptext       = [[The docile Sonar Station provides one of the few means of locating underwater targets.]],
    helptext_de    = [[Das Sonar ortet nach dem Echoprinzip von Radaranlagen feindliche Einheiten unter Wasser. Dazu strahlen sie selbst ein Signal aus und empfangen das entsprechende Echo, aus dessen Laufzeit auf die Entfernung zu den Einheiten geschlossen wird.]],
    helptext_pl    = [[Sonar jest odpowiednikiem radaru dzialajacym pod woda. Jest niezbedny do wykrywania (a zatem i niszczenia) okretow podwodnych i amfibii nieprzyjaciela.]],
    modelradius    = [[16]],
  },

  featureDefs       = {

    DEAD  = {
      description      = [[Wreckage - Sonar Station]],
      blocking         = false,
      damage           = 300,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 2,
      footprintZ       = 2,
      metal            = 16,
      object           = [[novasonar_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 16,
    },

    DEAD2 = {
      description      = [[Debris - Sonar Station]],
      blocking         = false,
      damage           = 300,
      energy           = 0,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      metal            = 16,
      object           = [[debris2x2a.s3o]],
      reclaimable      = true,
      reclaimTime      = 16,
    },

    HEAP  = {
      description      = [[Debris - Sonar Station]],
      blocking         = false,
      damage           = 300,
      energy           = 0,
      footprintX       = 2,
      footprintZ       = 2,
      metal            = 8,
      object           = [[debris2x2a.s3o]],
      reclaimable      = true,
      reclaimTime      = 8,
    },

  },

}

return lowerkeys({ armsonar = unitDef })
