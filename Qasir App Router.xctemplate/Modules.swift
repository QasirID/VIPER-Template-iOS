//
//  Modules.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ PT. Solusi Teknologi Indonesia. All rights reserved.

import Foundation
import UIKit

public protocol IModule {
    func presentView(parameters: [String: Any], presentType: PresentType)
}

public protocol Module: Product {
    var routePath: String { get }
}

public protocol Product {
    var productName: String { get }
}

public enum Products {
    case ARTDEVProduct

    public var productName: String {
        switch self {
        case .ARTDEVProduct:
            return "ARTDEV"
        }
    }

    public enum ARTDEV: Module {
        case LoginModule // Sample module

        public var productName: String {
            return "ARTDEV"
        }

        public var routePath: String {
            switch self {
            case .LoginModule:
                return "/artdev/login"            
            }
        }
    }
}
