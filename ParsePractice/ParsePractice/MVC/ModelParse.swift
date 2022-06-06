//
//  ModelParse.swift
//  ParsePractice
//
//  Created by Шермат Эшеров on 6/6/22.
//

import Foundation

class ModelParase{
    private var controller: ContollerParse
    private var store = LocalStore.shared
    
    init(controller: ContollerParse){
        self.controller = controller
    }
    
    func startParse(){
        guard let url = URL(string: "https://api.weather.yandex.ru/v2/forecast?lat=42.882004&lon=74.582748&extra=true") else {
            print("No URL")
            return
        }
        
        let session = URLSession.shared
        var request = URLRequest(url: url)
        request.addValue("f0f3bbf4-e868-4a63-9c71-44ed5ca6b0db", forHTTPHeaderField: "X-Yandex-API-Key")
        
        session.dataTask(with: request, completionHandler: {data, responce, error in
            if let error = error {
                print("\(error.localizedDescription)ERROR!")
            }
            
            guard let data = data else { return }
            
            do {
                let weathers = try JSONDecoder().decode(Weather.self, from: data)
                let forecasts = weathers.forecasts
                let facts = weathers.fact
                let info = weathers.info
                self.store.weathers.append(Weather(forecasts: forecasts, fact: facts, info: info))
            }
            catch{
                print("Error! -> \(error.localizedDescription)")
            }
            
        }).resume()
    }
    
    func sendToContoller() -> [Weather]{
        return self.store.weathers
    }
}
