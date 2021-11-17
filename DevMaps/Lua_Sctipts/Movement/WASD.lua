local m_MovementTrigger = CreateTrigger()

BlzTriggerRegisterPlayerKeyEvent(m_MovementTrigger, Player(0), OSKEY_W, 0, true)
BlzTriggerRegisterPlayerKeyEvent(m_MovementTrigger, Player(0), OSKEY_W, 0, false)