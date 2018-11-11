//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ PT. Solusi Teknologi Indonesia. All rights reserved.

import UIKit

public protocol I___VARIABLE_productName:identifier___Presenter: class {
	var parameters: [String: Any]? { get set }
}

public class ___VARIABLE_productName:identifier___Presenter: I___VARIABLE_productName:identifier___Presenter {
	
	var interactor: I___VARIABLE_productName:identifier___Interactor?
	var wireframe: I___VARIABLE_productName:identifier___Wireframe?
	weak var view: I___VARIABLE_productName:identifier___ViewController?
	public var parameters: [String: Any]?
	
	public init(interactor: I___VARIABLE_productName:identifier___Interactor, wireframe: I___VARIABLE_productName:identifier___Wireframe, view: I___VARIABLE_productName:identifier___ViewController) {
		self.interactor = interactor
		self.wireframe = wireframe
		self.view = view
	}
}

extension ___VARIABLE_productName:identifier___Presenter: I___VARIABLE_productName:identifier___InteractorDelegate {
	
}
