//
//  AppRouter.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ PT. Solusi Teknologi Indonesia. All rights reserved.

import Foundation
import Swinject
import UIKit

public enum PresentType {
    case root, push, present, presentWithNavigationBar, modal, modalWithNavigationBar
}

public protocol IAppsRouter {
    var resolver: Resolver { get }
    func present(view: UIViewController, animatedDisplay: Bool, animatedDismiss: Bool, presentType: PresentType)
    func popToRootViewController(animated: Bool)
    func popViewController(animated: Bool)
    func dismiss()
}

public class AppsRouter: BaseAppsRouter {
    public static let shared = AppsRouter.createAppsRouter()
    public static var assembler = Assembler()
    public static var products: [String: (_ appsRouter: IAppsRouter) -> IProductRouter] = [:]

    private static func createAppsRouter() -> AppsRouter {
        let router = AppsRouter(assembler: assembler, products: products)
        return router
    }
}