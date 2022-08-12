import sdl2
import std/random

randomize()

discard sdl2.init(INIT_EVERYTHING)

var
  window: WindowPtr
  render: RendererPtr

window = createWindow("SDL Skeleton", 100, 100, 640,480, SDL_WINDOW_SHOWN)
render = createRenderer(window, -1, Renderer_Accelerated or Renderer_PresentVsync or Renderer_TargetTexture)

var
  evt = sdl2.defaultEvent
  runGame = true

while runGame:
  while pollEvent(evt):
    if evt.kind == QuitEvent:
      runGame = false
      break

  render.setDrawColor 0,0,0,255
  render.clear

  ######################
  # draw rects
  render.setDrawColor(rand(255).uint8, rand(255).uint8, rand(255).uint8,255)
  var r = rect(rand(640).cint, rand(480).cint,rand(100).cint,rand(100).cint)
  render.fillRect(r)
  ######################

  render.present

destroy render
destroy window
