
 function MarkGameStarted()

  -- Main Frame.
  local m_MainFrame = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0)
  --BlzFrameSetAlpha(m_MainFrame, 0)
  --BlzFrameSetVisible(m_MainFrame, false)

  -- Hero bar.
  local m_HeroBar = BlzGetOriginFrame(ORIGIN_FRAME_HERO_BAR, 0)
  BlzFrameSetVisible(m_HeroBar, false)
  
  -- Item buttons.
  local m_ItemButtons = {}

  for i = 0, 5 do

    m_ItemButtons[i] = BlzGetOriginFrame(ORIGIN_FRAME_ITEM_BUTTON, i)

  end

  -- Command buttons.
  local m_CommandButtons = {}

  for i = 0, 11 do

    m_CommandButtons[i] = BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON, i)

  end

  -- Portrait.
  local m_Portrait = BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT, 0)

  -- Minimap buttons.
  local m_MinimapButtons = {}

  for i = 0, 4 do

    m_MinimapButtons[i] = BlzGetOriginFrame(ORIGIN_FRAME_MINIMAP_BUTTON, i)

  end

  local size_x = 0.16
  local size_y = 0.12
  local offset_x = 0.0
  local offset_y = 0.0

   -- Buttons array initialization.
  local frame_matrix = {}
  local matrix_x = 5
  local matrix_y = 5

  for i = 0, (matrix_x - 1) do

    frame_matrix[i] = {}

    for j = 0, (matrix_y - 1) do

      frame_matrix[i][j] = 0

    end

  end
   --------------------------------

   -- Frames to check rotation.
  for i = 0, (matrix_x - 1) do

    for j = 0, (matrix_y - 1) do

      frame_matrix[i][j] = BlzCreateFrame('ScoreScreenBottomButtonTemplate', m_MainFrame, 0, 0)
      BlzFrameSetSize(frame_matrix[i][j], size_x, size_y)
      BlzFrameSetAbsPoint(frame_matrix[i][j], FRAMEPOINT_TOPLEFT, 0.0 + (i * (size_x + offset_x)), 0.6 - (j * (size_y + offset_y)))
      --BlzFrameSetAlpha(frame_matrix[i][j], 100)
      BlzFrameSetVisible(frame_matrix[i][j], false)
      --BlzFrameSetTexture(frames_array[i][j], "ReplaceableTextures/CommandButtons/BTNFelBoar.blp", 0, true)

    end

  end
   
 end