//
//  SPM.swift
//  
//
//  Created by Leif on 8/26/21.
//

import ArgumentParser
import ShellOut

struct SPM: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "A utility for Swift Package Manager projects."
    )
    
    @OptionGroup var options: Options
    
    mutating func run() throws {
        try shellOut(
            to: .generateSwiftPackageXcodeProject(),
            at: options.path
        )
    }
}

