//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ PT. Solusi Teknologi Indonesia. All rights reserved.

import Foundation
import Swinject

public class ___VARIABLE_productName:identifier___Assembly: Assembly {
    public init() {}
    
    public func assemble(container: Container) {
        container.register(___VARIABLE_productName:identifier___Module.self) { (_, appsRouter: IAppsRouter) in
            ___VARIABLE_productName:identifier___Module(router: appsRouter)
        }
        
        container.register(I___VARIABLE_productName:identifier___Wireframe.self) { (_, appsRouter: IAppsRouter) -> I___VARIABLE_productName:identifier___Wireframe in
            ___VARIABLE_productName:identifier___Wireframe(router: appsRouter)
        }
        
        container.register(I___VARIABLE_productName:identifier___Interactor.self) { _ in
            
            /*
             | Register your manager here, ex:
             |
             | let sampleManager = r.resolve(ISampleManager.self)!
             |
             | And let's initial the manager with interactor, ex:
             |
             | let interactor = ___VARIABLE_productName:identifier___Interactor(sampleManager: sampleManager)
             */
            
            let interactor = ___VARIABLE_productName:identifier___Interactor()
            return interactor
        }
        
        container.register(I___VARIABLE_productName:identifier___Presenter.self) { (r, appsRouter: IAppsRouter, view: I___VARIABLE_productName:identifier___ViewController) in
            let wireframe = r.resolve(I___VARIABLE_productName:identifier___Wireframe.self, argument: appsRouter)!
            let interactor = r.resolve(I___VARIABLE_productName:identifier___Interactor.self)!
            let presenter = ___VARIABLE_productName:identifier___Presenter(interactor: interactor, wireframe: wireframe, view: view)
            interactor.delegate = presenter
            return presenter
        }
        
        /*
         | If you need passing some paramenter,
         | you can add new params with name parameters or other, ex:
         |
         | container.register(___VARIABLE_productName:identifier___ViewController.self) { (r, appsRouter: IAppsRouter, parameters: [String: Any]) in
         |     let bundle = Bundle(for: ___VARIABLE_productName:identifier___ViewController.self)
         |     let view = ___VARIABLE_productName:identifier___ViewController(nibName: "___VARIABLE_productName:identifier___ViewController", bundle: bundle)
         |     let presenter = r.resolve(IPresenter.self, arguments: appsRouter, view as I___VARIABLE_productName:identifier___ViewController)!
         |     presenter.parameters = parameters
         |     view.presenter = presenter
         |     return view
         | }
         */
        
        container.register(___VARIABLE_productName:identifier___ViewController.self) { (r, appsRouter: IAppsRouter, parameters: [String: Any]) in
            let bundle = Bundle(for: ___VARIABLE_productName:identifier___ViewController.self)
            let view = ___VARIABLE_productName:identifier___ViewController(nibName: "___VARIABLE_productName:identifier___ViewController", bundle: bundle)
            let presenter = r.resolve(I___VARIABLE_productName:identifier___Presenter.self, arguments: appsRouter, view as I___VARIABLE_productName:identifier___ViewController)!
            presenter.parameters = parameters
            view.presenter = presenter
            return view
        }
    }
}