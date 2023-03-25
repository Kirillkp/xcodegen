//
//  Configuration.swift
//  XcodeGenDemo
//

import Foundation

enum Configuration {

    // MARK: - Type Methods

    static let isXcodeGenIntegrated: Bool = {
        guard let infoDictionary = Bundle.main.infoDictionary else {
            fatalError("Info.plist file not found")
        }

        guard let xcodeGenState = infoDictionary["XCODEGEN_STATE"] as? String else {
            fatalError("XCODEGEN_INTEGRATED not set in Info.plist file for this environment")
        }

        return xcodeGenState == "YES"
    }()
}
