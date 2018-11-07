//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Viper Swift Template
//

import LightRoute

protocol ___VARIABLE_viperModuleName___RouterInput: class {
    func openNext()
    func openBack()
}

final class ___VARIABLE_viperModuleName___Router: ___VARIABLE_viperModuleName___RouterInput {
    
    weak var transitionHandler: TransitionHandler!
    
    func openNext() {
        //  let storyboard = UIStoryboard(name: "{NAME}", bundle: Bundle.main)
        //  let factory = StoryboardFactory(storyboard: storyboard)
        //  
        //  try? transitionHandler
        //     .forStoryboard(factory: factory, to: {NAME}View.self)
        //      .transition(animate: false)
        //      .then { moduleInput in
        //          moduleInput.configure()
        //  }
    }
    
    func openBack() {
        try? transitionHandler
            .closeCurrentModule()
            .perform()
    }
    
}
