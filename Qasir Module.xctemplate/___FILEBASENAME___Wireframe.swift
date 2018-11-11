//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ PT. Solusi Teknologi Indonesia. All rights reserved.

import UIKit

public protocol I___VARIABLE_productName:identifier___Wireframe: class {
    func presentView(parameters: [String: Any], presentType: PresentType)    
}

public class ___VARIABLE_productName:identifier___Wireframe: I___VARIABLE_productName:identifier___Wireframe {
    let router: IAppsRouter

    init(router: IAppsRouter) {
        self.router = router
    }

    public func presentView(parameters: [String: Any], presentType: PresentType) {
        let view = router.resolver.resolve(___VARIABLE_productName:identifier___ViewController.self, arguments: router, parameters)!
        router.present(view: view, animatedDisplay: true, animatedDismiss: true, presentType: presentType)
    }
}
