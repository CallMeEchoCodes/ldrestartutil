import Foundation

let CMDLineArgs = Array(CommandLine.arguments.dropFirst()).joined(separator: " ")

// this REQUIRES you to "chmod 6755" 
setuid(0)
setgid(0)

guard getuid() == 0 else {
    print("We don't have permission to run as root! You probably installed this package wrong.")
    exit(1)
}

let task = NSTask()
task.setLaunchPath(LDRestartPath)
task.launch()
task.waitUntilExit()

exit(task.terminationStatus)