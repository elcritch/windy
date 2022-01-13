import pixie, windy

when defined(windows):
  # Window icon API only currently supported on Windows

  let window = newWindow("Windy Cursor", ivec2(1280, 800))
  window.makeContextCurrent()

  let
    icon = newImage(64, 64)
    path = newPath()
  path.circle(circle(vec2(32, 32), 26))
  icon.fillPath(path, color(0.3, 0.6, 0.9, 1))

  window.icon = icon

  while not window.closeRequested:
    pollEvents()
