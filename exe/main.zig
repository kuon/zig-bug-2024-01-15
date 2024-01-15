const std = @import("std");

const hello = @import("hello");

pub fn main() !void {
    std.debug.print("Should print 18: {}\n\n", .{hello.a});
}
