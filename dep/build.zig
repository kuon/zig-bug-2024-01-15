const std = @import("std");

pub fn build(b: *std.Build) void {
    const hello = b.addModule("hello", .{
        .root_source_file = .{ .path = "hello.zig" },
    });
    _ = hello;
}
