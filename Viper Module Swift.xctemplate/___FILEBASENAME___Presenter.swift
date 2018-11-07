//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Viper Swift Template
//

import Foundation

final class ___VARIABLE_viperModuleName___Presenter: ___VARIABLE_viperModuleName___ViewOutput {
    
    weak var view: ___VARIABLE_viperModuleName___ViewInput!
    var interactor: ___VARIABLE_viperModuleName___InteractorInput!
    var router: ___VARIABLE_viperModuleName___RouterInput!

    init() {
        #if DEBUG
            print("___VARIABLE_viperModuleName___Presenter init()")
        #endif
    }
    

    
}

extension ___VARIABLE_viperModuleName___Presenter: ___VARIABLE_viperModuleName___InteractorOutput {
    
}
