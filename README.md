# Zig bug showcase

`cd exe`

`zig build hello`


Output:

```
error: Invalid option: -Dcpu
error: Invalid option: -Dtarget
error: Invalid option: -Doptimize
/usr/lib/zig/std/Build.zig:1739:35: 0x111701b in dependency__anon_13722 (build)
            return dependencyInner(b, name, pkg.build_root, if (@hasDecl(pkg, "build_zig")) pkg.build_zig else null, pkg.deps, args);
                                  ^
/home/kuon/Playground/zig-bug/exe/build.zig:15:31: 0x10ccec4 in build (build)
    const hello = b.dependency("hello", .{
                              ^
/usr/lib/zig/std/Build.zig:1858:33: 0x10b8563 in runBuild__anon_8179 (build)
        .Void => build_zig.build(b),
                                ^
/usr/lib/zig/build_runner.zig:319:29: 0x10b41ff in main (build)
        try builder.runBuild(root);
                            ^
/usr/lib/zig/std/start.zig:585:37: 0x109f315 in posixCallMainAndExit (build)
            const result = root.main() catch |err| {
                                    ^
/usr/lib/zig/std/start.zig:253:5: 0x109ee01 in _start (build)
    asm volatile (switch (native_arch) {
    ^
???:?:?: 0x7 in ??? (???)
Unwind information for `???:0x7` was not available, trace may be incomplete
```
