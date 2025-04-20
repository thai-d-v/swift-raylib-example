```shell
~/Downloads/swift-raylib 
❯ git clone https://github.com/raysan5/raylib.git Sources/raylib
```

```shel
~/Downloads/swift-raylib
❯ export MACOSX_DEPLOYMENT_TARGET=15.0
```

```shel
~/Downloads/swift-raylib/Sources/raylib/src
❯ make
```

- create a file `module.modulemap` at `~/Downloads/swift-raylib/Sources/raylib/src` with this code
```text
module Raylib {
  header "raylib.h"
  export *
}
```

- create a file `main.swift` at `~/Downloads/swift-raylib/Sources/` with this code
```swift
import Raylib

InitWindow(800, 600, "Hello from Swift")

while !WindowShouldClose() {
    BeginDrawing()
    ClearBackground(Color(r: 0x18, g: 0x18, b: 0x18, a: 0xFF))
    DrawRectangleV(Vector2(x: 0, y: 0), Vector2(x: 100, y: 100), Color(r: 255, g: 0, b: 0, a: 100))
    EndDrawing()
}

CloseWindow()
```

- compile Swift code with raylib
```shel
~/Downloads/swift-raylib 
❯ swiftc Sources/main.swift \
  -I Sources/raylib/src \
  -L Sources/raylib/src \
  -lraylib \
  -framework Cocoa \
  -framework IOKit \
  -framework CoreVideo \
  -framework CoreGraphics \
  -framework Foundation \
  -framework OpenGL \
  -lm
```

- run
```shel
~/Downloads/swift-raylib 
❯ ./main
```
