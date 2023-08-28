const std = @import("std");

const dprint = std.debug.print;

pub fn main() anyerror!void {
    return;
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit();
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
