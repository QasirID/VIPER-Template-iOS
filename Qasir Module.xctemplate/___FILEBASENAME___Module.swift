//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ PT. Solusi Teknologi Indonesia. All rights reserved.

import Foundation
import UIKit

public class ___VARIABLE_productName:identifier___Module: IModule {
    public let router: IAppsRouter

    public init(router: IAppsRouter) {
        self.router = router
    }

    public func presentView(parameters: [String: Any], presentType: PresentType) {
        let wireframe = router.resolver.resolve(I___VARIABLE_productName:identifier___Wireframe.self, argument: router)!
        wireframe.presentView(parameters: parameters, presentType: presentType)
    }
}
