//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Dylan on 11/13/24.
//

import Foundation

struct Athlete {
    var name: String
    var age: Int
    var league: String
    var team: String
    
    var description: String {
        return "\(name) is \(age) years old, and plays for \(team) in the \(league)"
    }
}
