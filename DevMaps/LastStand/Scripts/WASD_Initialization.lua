m_MovementTrigger = CreateTrigger()

TriggerAddAction(m_MovementTrigger, CheckKeyPress)

function CheckKeyPress(key)

    BlzTriggerRegisterPlayerKeyEvent(m_MovementTrigger, GetLocalPlayer(), key, 0, true)

end