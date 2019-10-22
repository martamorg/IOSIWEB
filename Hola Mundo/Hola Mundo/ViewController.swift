//
//  ViewController.swift
//  Hola Mundo
//
//  Created by g946 DIT UPM on 22/10/2019.
//  Copyright © 2019 UPM. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func updateHola(_ sender: UIButton) {
        msgLabel.text = "Cibeles"
        
        let center = CLLocationCoordinate2D(latitude: 40.4192500, longitude: -3.6932700)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg,animated: true)
        
    }
    
    @IBAction func updateMundo(_ sender: UIButton) {
        msgLabel.text = "Teleco"
        
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg,animated: true)
    }
    
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
    @IBAction func updateAranjuez(_ sender: UIButton) {
        msgLabel.text = "Aranjuez"
               
        let center = CLLocationCoordinate2D(latitude: 40.0364500, longitude: -3.6081900)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
               
               mapView.setRegion(reg,animated: true)
    }
    
    @IBAction func updateSegment(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        case 2:
            mapView.mapType = .hybrid
        default:
            break
        }
    }
}

