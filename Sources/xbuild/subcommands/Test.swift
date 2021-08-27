//
//  Test.swift
//  
//
//  Created by Leif on 8/26/21.
//

import ArgumentParser
import ShellOut

struct Test: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "A utility for testing Xcode Projects.",
        subcommands: [Scheme.self, List.self],
        defaultSubcommand: Scheme.self
    )
    
    struct Scheme: ParsableCommand {
        @Argument()
        var scheme: String
        
        @OptionGroup var options: Options
        
        func run() throws {
            print(
                try shellOut(
                    to: "xcodebuild test -scheme \(scheme)",
                    at: options.path
                )
            )
        }
    }
    
    struct List: ParsableCommand {
        @OptionGroup var options: Options
        
        func run() throws {
            print(
                try shellOut(
                    to: "xcodebuild test -list",
                    at: options.path
                )
            )
        }
    }
}


