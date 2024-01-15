const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});


    const exe = b.addExecutable(.{
        .name = "hello-playground",
        .root_source_file = .{ .path = "main.zig" },
        .target = target,
        .optimize = optimize,
    });

    const hello = b.dependency("hello", .{
        .target = target,
        .optimize = optimize,
    });
    exe.root_module.addImport("hello", hello.module("hello"));

    exe.linkLibC();

    b.installArtifact(exe);

    const build_exe = b.addInstallArtifact(exe, .{});

    const run_step = b.step("hello", "Build  playground");
    run_step.dependOn(&build_exe.step);
}
