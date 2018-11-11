//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ PT. Solusi Teknologi Indonesia. All rights reserved.

import UIKit

public protocol I___VARIABLE_productName:identifier___InteractorDelegate: class {
	
}

public protocol I___VARIABLE_productName:identifier___Interactor: class {
	var delegate: I___VARIABLE_productName:identifier___InteractorDelegate? { get set }
}

public class ___VARIABLE_productName:identifier___Interactor: I___VARIABLE_productName:identifier___Interactor {
	
	// MARK: - Declare delegate

	public var delegate: I___VARIABLE_productName:identifier___InteractorDelegate?

	/*
	 | Declare your managers here, ex:
	 |
	 | var sampleManager: ISampleManager?
	 |
	 | And let's initial managers, ex:
	 |
	 | init(sampleManager: ISampleManager) {
	 |    self.sampleManager = sampleManager
	 | }
	 */

	init() {
		// Do someting here...
	}
}