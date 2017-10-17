//
//  BirdViewController.swift
//  MissouriBirdersApprentice
//
//  Created by Student on 10/15/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {
    
    var brd:Bird!
    @IBOutlet weak var locationLBL: UILabel!
    @IBOutlet weak var dateLBL: UILabel!
    @IBOutlet weak var sightingsLBL: UITextField!
    @IBOutlet weak var birdImage: UIImageView!

    @IBAction func updateSightingsBTN(_ sender: Any)
    {
        brd.updateNumSightings(sightings:Int(sightingsLBL.text!)!)
        self.sightingsLBL.resignFirstResponder()
        viewDidLoad()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = brd.Name!
        locationLBL.text = "\(brd.Location.latitude), \(brd.Location.longitude)"
        dateLBL.text = "\(brd.DateFirstSighted.month!)/\(brd.DateFirstSighted.day!)/\(brd.DateFirstSighted.year!)/  \(brd.DateFirstSighted.hour!):\(brd.DateFirstSighted.minute!)"
       sightingsLBL!.text = "\(brd.NumOfSightings!)"
        birdImage.image = brd.img!
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
