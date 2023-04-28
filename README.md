# ldrestartutil
An easy way to run LDRestart as root. Made for tweak developers.

### Usage
1. Add it to your dependencies
```
Depends: dev.callmeecho.ldrestartutil
```
2. Use it!
```objc
// Objective C example
- (void)ldrestart {
    pid_t pid;
    char *args[] = { ROOT_PATH("/usr/libexec/ldrestartutil"), NULL };
    int status = posix_spawn(&pid, args[0], NULL, NULL, args, NULL);
    waitpid(pid, NULL, 0);
}
```

```swift
// Swift example
let task = NSTask()
// If you know how to it might be a good idea to use the ROOT_PATH_NS macro. Check Rootpath.h and Rootpath.m on this repo
task.setLaunchPath("/usr/libexec/ldrestartutil")
task.launch()
task.waitUntilExit()
```
