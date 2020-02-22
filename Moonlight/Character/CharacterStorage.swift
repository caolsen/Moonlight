//
//  CharacterStorage.swift
//  Moonlight
//
//  Created by Christopher Olsen on 2/22/20.
//  Copyright © 2020 Christopher Olsen. All rights reserved.
//

import Foundation

struct CharacterStorage {
    var characters: [Character] {
        get {
            return retrieveFromDisk()
        }
    }
    
    private func retrieveFromDisk() -> [Character] {
        return [
            Character(name: "Alaina")
        ]
    }
}
