//
//  Store.swift
//  ParsePractice
//
//  Created by Шермат Эшеров on 6/6/22.
//

import Foundation


class LocalStore{
    static let shared = LocalStore()
    private init() {}
    
    var weathers: [Weather] = []
    
}

struct Weather: Codable{
    var forecasts: [Forecasts]
    var fact: Fact
    var info: Info
}

struct Fact: Codable{
    var condition: String
    var humidity: Int
    
}

struct Forecasts: Codable{
    var parts: Parts
}

struct Parts: Codable{
    var morning: Morning
    var day: Day
    var night: Night
}

struct Morning: Codable{
    var temp_avg: Int
    var wind_speed: Double
    var condition: String
}


struct Day: Codable{
    var temp_avg: Int
    var wind_speed: Double
    var condition: String
}

struct Night: Codable{
    var temp_avg: Int
    var wind_speed: Double
    var condition: String
}

struct Info: Codable {
    var tzinfo: Tzinfo
}

struct Tzinfo: Codable{
    var name: String
}
