//
//  File.swift
//  MissouriBirdersApprentice
//
//  Created by Student on 10/15/17.
//  Copyright © 2017 Student. All rights reserved.
//

import Foundation
import CoreLocation
class Bird:CustomStringConvertible {
    var description: String=""
    var Name:String?
    var LatinName:String?
    var Location: CLLocationCoordinate2D?
    var DateFirstSighted:Date?
    var NumOfSightings:Int?
    
    
    init(Name:String, LatinName:String, Location:CLLocationCoordinate2D, DateFirstSighted:Date, NumOfSightings:Int)
    {
        self.Name = Name
        self.LatinName = LatinName
        self.Location=Location
        self.DateFirstSighted = DateFirstSighted
        self.NumOfSightings = NumOfSightings
    }
    func updateNumSightings() -> Int {
        
    return 1
    }
}
