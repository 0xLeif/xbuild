//
//  Build.swift
//  
//
//  Created by Leif on 8/26/21.
//

import ArgumentParser
import ShellOut

struct Build: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "A utility for building Xcode Projects."
    )
    
    @OptionGroup var options: Options
    
    mutating func run() throws {
        print(
            try shellOut(
                to: "xcodebuild build",
                at: options.path
            )
        )
    }
}
