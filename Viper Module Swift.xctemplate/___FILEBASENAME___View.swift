//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Viper Swift Template
//

import UIKit

protocol ___VARIABLE_viperModuleName___ModuleInput: class {
    func configure()
}

protocol ___VARIABLE_viperModuleName___ViewInput: class {
    
}

protocol ___VARIABLE_viperModuleName___ViewOutput: class {
    
}

final class ___VARIABLE_viperModuleName___View: UIViewController, ___VARIABLE_viperModuleName___ViewInput {

    var presenter: ___VARIABLE_viperModuleName___ViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

extension ___VARIABLE_viperModuleName___View: ___VARIABLE_viperModuleName___ModuleInput {
    func configure() {        
        
    }
}
