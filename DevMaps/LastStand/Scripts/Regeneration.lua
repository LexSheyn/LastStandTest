function RegenHp(unit)
   
    local hp_max = BlzGetUnitMaxHP(unit)
    
    local hp = (BlzGetUnitRealField(unit, UNIT_RF_HP))

    local hp_regen = (BlzGetUnitRealField(unit, UNIT_RF_HIT_POINTS_REGENERATION_RATE))

    local hp_heal = (((hp_max + .0) - hp) / 20.0) + hp_regen

    local hp_result = math.ceil( hp + hp_heal )

    SetUnitLifeBJ(unit, hp_result)

    -- TEST
    --SetUnitFacing(unit, math.floor(hp))

end