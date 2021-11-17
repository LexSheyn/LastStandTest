KEY = {

    FORWARD  = OSKEY_W,
    BACKWARD = OSKEY_S,
    LEFT     = OSKEY_A,
    RIGHT    = OSKEY_D

}

METAKEY = {

    RUN = OSKEY_LSHIFT,
    SIT = OSKEY_LCONTROL

}

function CreateKeyListener()

    print("Creating Key Listener")

    m_KeyListenerTrigger = CreateTrigger()

    function CheckKeyPressed()
        
        BlzTriggerRegisterPlayerKeyEvent(m_KeyListenerTrigger, GetLocalPlayer(), OSKEY_W, 0, true)
        BlzTriggerRegisterPlayerKeyEvent(m_KeyListenerTrigger, GetLocalPlayer(), OSKEY_W, OSKEY_LSHIFT, true)

        local key_pressed = BlzGetTriggerPlayerKey()

        print("OSKey: ", key_pressed)

        local meta_key_pressed = BlzGetTriggerPlayerMetaKey()

        print("MetaKey: ", meta_key_pressed)    

        if (key_pressed == OSKEY_W) and (meta_key_pressed == 0) then

            SetUnitAnimationByIndex(m_PlayerOne, 26)

        elseif (key_pressed == OSKEY_W) and (meta_key_pressed == OSKEY_LSHIFT) then

            SetUnitAnimationByIndex(m_PlayerOne, 6)

        end        

    end

    TriggerAddAction(m_KeyListenerTrigger, CheckKeyPressed)

    

    print("Key Listener has created")

end