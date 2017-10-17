//
//  Data.swift
//  MissouriBirdersApprentice
//
//  Created by Student on 10/16/17.
//  Copyright © 2017 Student. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit

class Bird:CustomStringConvertible,Equatable {

    var description: String=""
    var Name:String!
    var LatinName:String!
    var Location: CLLocationCoordinate2D!
    var DateFirstSighted:DateComponents!
    var NumOfSightings:Int!
     var img:UIImage!
    
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return true
    }
    init(Name:String, LatinName:String, Location:CLLocationCoordinate2D, DateFirstSighted:DateComponents, NumOfSightings:Int, img:UIImage)
    {
        self.Name = Name
        self.LatinName = LatinName
        self.Location=Location
        self.DateFirstSighted = DateFirstSighted
        self.NumOfSightings = NumOfSightings
        self.img=img
    }
    
    func updateNumSightings(sightings:Int) {
   
    NumOfSightings!+=1
    }
   
}
var BluePigeon = Bird(Name: "BluePigeon", LatinName: "pidge", Location: CLLocationCoordinate2D(latitude: 30.1, longitude: 33), DateFirstSighted:  DateComponents(year: 2005, month: 02, day:15, hour:6,minute: 34), NumOfSightings: 4, img: #imageLiteral(resourceName: "bluepigeon"))
var Dodo = Bird(Name: "Dodo", LatinName: "pidgeotto", Location: CLLocationCoordinate2D(latitude: 22.1, longitude: 55.3), DateFirstSighted:  DateComponents(year: 2000, month: 11, day:16, hour:01,minute: 34), NumOfSightings: 5, img: #imageLiteral(resourceName: "dodo"))
var Warbler = Bird(Name: "Warbler", LatinName: "spearow", Location: CLLocationCoordinate2D(latitude: 45.1, longitude: 66.6), DateFirstSighted:  DateComponents(year: 2003, month: 12, day:15, hour:02,minute: 34), NumOfSightings: 3, img: #imageLiteral(resourceName: "warbler"))
var Huia = Bird(Name: "Huia", LatinName: "fearow", Location: CLLocationCoordinate2D(latitude: 11.1, longitude: 77), DateFirstSighted:  DateComponents(year: 2001, month: 02, day:1, hour:09,minute: 4), NumOfSightings: 25, img: #imageLiteral(resourceName: "Huia"))
var Owl = Bird(Name: "Owl", LatinName: "zapdos", Location: CLLocationCoordinate2D(latitude: 55.1, longitude: 88), DateFirstSighted:  DateComponents(year: 2006, month: 02, day:05, hour:08,minute: 34), NumOfSightings: 15, img: #imageLiteral(resourceName: "laughing_owl"))
var Mamo = Bird(Name: "Mamo", LatinName: "arkanine", Location: CLLocationCoordinate2D(latitude: 66.9, longitude: 93.5), DateFirstSighted:  DateComponents(year: 2008, month: 02, day:23, hour:09,minute: 34), NumOfSightings: 5, img: #imageLiteral(resourceName: "mamo"))
var Piopio = Bird(Name: "Piopio", LatinName: "lapras", Location: CLLocationCoordinate2D(latitude: 88.18, longitude: 104.7), DateFirstSighted:  DateComponents(year: 1984, month: 07, day:07, hour:08,minute: 4), NumOfSightings: 5, img: #imageLiteral(resourceName: "piopio"))
var Quail = Bird(Name: "Quail", LatinName: "moltres", Location: CLLocationCoordinate2D(latitude: 118.7, longitude: 331.5), DateFirstSighted:  DateComponents(year: 1994, month: 11, day:13, hour:05,minute: 3), NumOfSightings: 5, img: #imageLiteral(resourceName: "quail"))
var Sparrow = Bird(Name: "Sparrow", LatinName: "articuno", Location: CLLocationCoordinate2D(latitude: 370.1, longitude: 311.3), DateFirstSighted:  DateComponents(year: 1995, month: 06, day:06, hour:8,minute: 34), NumOfSightings: 3, img: #imageLiteral(resourceName: "sparrow"))

struct County {
    var name:String
    var Birds:[Bird] 
}

struct State {
    static var countyArray:[County] = [County(name: "Nodaway", Birds: [BluePigeon,Dodo,Warbler]), County(name: "Worth", Birds: [Huia,Owl,Mamo]), County(name: "Holt", Birds: [Piopio,Quail,Sparrow]) ]
    
}

