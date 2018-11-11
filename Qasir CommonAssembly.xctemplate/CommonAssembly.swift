
//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ PT. Solusi Teknologi Indonesia. All rights reserved.

import Foundation
import Swinject

public class CommonAssembly: Assembly {
	
	public func assemble(container: Container) {
		container.register(IAppRouter.self) { _ in
			AppRouter.shared
		}

		/*
		 | Register your manager here, ex :
		 |
		 | container.register(ISampleManager.self) {(r) in
		 |	    return SampleManager()
		 | }
		 */
	}
}