import Raylib

InitWindow(800, 600, "Hello from Swift")

while !WindowShouldClose() {
    BeginDrawing()
    ClearBackground(Color(r: 0x18, g: 0x18, b: 0x18, a: 0xFF))
    DrawRectangleV(Vector2(x: 0, y: 0), Vector2(x: 100, y: 100), Color(r: 255, g: 0, b: 0, a: 100))
    EndDrawing()
}

CloseWindow()
