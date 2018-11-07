//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Viper Swift Template
//

import Swinject
import SwinjectStoryboard

final class ___VARIABLE_viperModuleName___AssemblyContainer: Assembly {
    
    func assemble(container: Container) {
        container.register(___VARIABLE_viperModuleName___Interactor.self) { (r, presenter: ___VARIABLE_viperModuleName___Presenter) in
            let interactor = ___VARIABLE_viperModuleName___Interactor()
            interactor.presenter = presenter
            
            // Inject API
            // interactor.apiLayer = r.resolve(ApiProtocol.self) 

            return interactor
        }
        
        container.register(___VARIABLE_viperModuleName___Router.self) { (r, view: ___VARIABLE_viperModuleName___View) in
            let router = ___VARIABLE_viperModuleName___Router()
            router.transitionHandler = view
            
            return router
        }
        
        container.register(___VARIABLE_viperModuleName___Presenter.self) { (r, view: ___VARIABLE_viperModuleName___View) in
            let presenter = ___VARIABLE_viperModuleName___Presenter()
            presenter.view = view
            presenter.interactor = r.resolve(___VARIABLE_viperModuleName___Interactor.self, argument: presenter)
            presenter.router = r.resolve(___VARIABLE_viperModuleName___Router.self, argument: view)
            
            return presenter
        }
        
        container.storyboardInitCompleted(___VARIABLE_viperModuleName___View.self) { r, view in
            view.presenter = r.resolve(___VARIABLE_viperModuleName___Presenter.self, argument: view)
        }
    }
}
