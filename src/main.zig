const std = @import("std");
const raylib = @import("raylib");
const dprint = std.debug.print;

pub fn main() anyerror!void {
    const screen_width = 800;
    const screen_height = 450;
    const title = "zigpong";

    raylib.initWindow(screen_width, screen_height, title);
    defer raylib.closeWindow();

    while (!raylib.windowShouldClose()) {
        raylib.beginDrawing();
        defer raylib.endDrawing();

        raylib.clearBackground(raylib.Color.black);

        raylib.drawRectangle(0, 0, 100, 100, raylib.Color.blue);

        raylib.drawFPS(8, 8);
    }
}
