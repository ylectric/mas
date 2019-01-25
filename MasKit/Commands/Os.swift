//
//  Os.swift
//  mas-cli
//
//  Created by Ben Chatelain on 2019-01-23.
//  Copyright © 2019 mas-cli. All rights reserved.
//

import Commandant
import Result
import StoreFoundation

/// Command for managing macOS installers.
public struct OsCommand: CommandProtocol {
    public typealias Options = NoOptions<MASError>
    public let verb = "os"
    public let function = "Manages macOS installer"

    public init() {}

    /// Runs the command.
    public func run(_ options: Options) -> Result<(), MASError> {
        for installer in MacOS.allCases {
            print("  - \(installer)")
        }
        return .success(())
    }
}
