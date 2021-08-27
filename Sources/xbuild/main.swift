import ArgumentParser
import ShellOut

struct XBuild: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "A utility for Xcode.",
        version: "0.1.0",
        subcommands: [Build.self, SPM.self, Test.self],
        defaultSubcommand: Build.self
    )
}

struct Options: ParsableArguments {
    @Argument(
        help: "The path of the Xcode *.xcodeproj file."
    )
    var path: String = "."
}

XBuild.main()
