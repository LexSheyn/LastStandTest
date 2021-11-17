local Guardian = {

    name = "Guardian",
    id = "Hc00"

}

function SpawnGuardians()

    local m_CreatedUnit = nil
    
    local i = 0

    while i < 4 do
        
        m_CreatedUnit = CreateUnit(Player(i), FourCC(Guardian.id), -260 + i * 200, -160, 90)

            -- Print Stats:
        print(BlzGetUnitMaxHP(m_CreatedUnit))
        print(BlzGetUnitMaxMana(m_CreatedUnit))
        print("")

        i = i + 1

    end

end