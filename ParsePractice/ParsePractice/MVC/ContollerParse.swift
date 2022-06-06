//
//  ContollerParse.swift
//  ParsePractice
//
//  Created by Шермат Эшеров on 6/6/22.
//

import Foundation


class ContollerParse{
    private var model: ModelParase!
    private weak var view: ViewController?
    
    init(view: ViewController){
        self.model = ModelParase(controller: self)
        self.view = view
    }

    func startParse(){
        model.startParse()
    }
    
    func getFromModel() -> [Weather]{
        return model.sendToContoller()
    }
    
}
