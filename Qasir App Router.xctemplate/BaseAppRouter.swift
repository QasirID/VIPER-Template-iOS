//
//  BaseAppRouter.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ PT. Solusi Teknologi Indonesia. All rights reserved.

import Foundation
import Swinject

public protocol IProductRouter: class {
    func presentModule(module: Module, parameters: [String: Any], presentType: PresentType)
}

public class BaseAppsRouter: NSObject, IAppsRouter, UINavigationControllerDelegate {
    private var assembler: Assembler!
    private var products: [String: (_ appsRouter: IAppsRouter) -> IProductRouter] = [:]
    let appDelegate = UIApplication.shared.delegate
    private var navigationController: UINavigationController?
    
    init(assembler: Assembler, products: [String: (_ appsRouter: IAppsRouter) -> IProductRouter]) {
        self.assembler = assembler
        self.products = products
    }
    
    public var resolver: Resolver {
        return assembler.resolver
    }
    
    public func presentModule(module: Module, parameters: [String: Any], presentType: PresentType) {
        if let productConstuctor = products[module.productName] {
            let product = productConstuctor(self)
            product.presentModule(module: module, parameters: parameters, presentType: presentType)
        }
    }
    
    public func present(view: UIViewController, animatedDisplay: Bool, animatedDismiss: Bool, presentType: PresentType) {
        switch presentType {
        case .root:
            appDelegate?.window??.rootViewController = UINavigationController(rootViewController: view)
            navigationController = appDelegate?.window??.rootViewController as? UINavigationController
        case .push:
            navigationController?.pushViewController(view, animated: animatedDisplay)
        case .present:
            navigationController?.present(view, animated: animatedDisplay, completion: nil)
        case .presentWithNavigationBar:
            let nav = UINavigationController(rootViewController: view)
            navigationController?.present(nav, animated: animatedDisplay) {
                self.navigationController = nav
            }
        case .modal:
            view.modalPresentationStyle = .overCurrentContext
            view.modalTransitionStyle = .crossDissolve
            navigationController?.present(view, animated: animatedDisplay, completion: nil)
        case .modalWithNavigationBar:
            let nav = UINavigationController(rootViewController: view)
            nav.modalPresentationStyle = .overCurrentContext
            nav.modalTransitionStyle = .crossDissolve
            navigationController?.present(nav, animated: animatedDisplay) {
                self.navigationController = nav
            }
        }
    }
    
    public func dismiss() {
        navigationController?.dismiss(animated: true) {
            self.navigationController = self.appDelegate?.window??.rootViewController as? UINavigationController
        }
    }
    
    public func popToRootViewController(animated: Bool) {
        navigationController?.popToRootViewController(animated: animated)
    }
    
    public func popViewController(animated: Bool) {
        navigationController?.popViewController(animated: animated)
    }
}
