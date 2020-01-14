//
//  Rabbit.swift
//  TestingApplication
//
//  Created by Your Host on 1/9/20.
//  Copyright © 2020 Mati Kos. All rights reserved.
//

import Foundation

class Rabbit {
    var health: Int = 100
    var type: RabbitType
    var attackType: RabbitAttackType
    
    init(type: RabbitType, attackType: RabbitAttackType) {
        self.type = type
        self.attackType = attackType
    }
    
    func attack (enemy: Rabbit){
        var damage = 25
        
        if (enemy.type == .Biter && attackType == .Punch) {
            damage = 50
        }
        
        if (enemy.type == .Puncher && attackType == .Nibble) {
            damage = 10
        }
        enemy.health -= damage
    }
    
    func train () {
        health += 25
    }
    
    func rest() {
        health += 15
    }
}


enum RabbitType {
    case Biter
    case Kicker
    case Puncher
}


enum RabbitAttackType {
    case Nibble
    case Kick
    case Punch
}
