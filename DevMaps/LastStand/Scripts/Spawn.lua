-- Possibly should be global.
local m_Guardian = {

    {
        name   = "000",
        id     = "Hc00",
        number = 0
    },

    {
        name   = "001",
        id     = "Hc00",
        number = 1
    },

    {
        name   = "002",
        id     = "Hc00",
        number = 2
    },

    {
        name   = "003",
        id     = "Hc00",
        number = 3
    }

}

m_PlayerOne   = nil
m_PlayerTwo   = nil
m_PlayerThree = nil
m_PlayerFour  = nil

function SpawnGuardians()

    local created_unit = nil

    for i, unit in ipairs(m_Guardian) do
        
        created_unit = CreateUnit(Player(i - 1), FourCC(unit.id), -400 + i * 150, -150, 90)

        if i == 1 then 
            
            m_PlayerOne   = created_unit

        elseif i == 2 then 
            
            m_PlayerTwo   = created_unit

        elseif i == 3 then 
            
            m_PlayerThree = created_unit

        elseif i == 4 then 
            
            m_PlayerFour  = created_unit 
        
        end

    end

end