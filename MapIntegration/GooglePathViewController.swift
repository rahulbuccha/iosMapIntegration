//
//  GooglePathViewController.swift
//  MapIntegration
//
//  Created by Admin on 06/07/22.
//

import UIKit
import GoogleMaps

class GooglePathViewController: UIViewController {

    @IBOutlet weak var mapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let camera = GMSCameraPosition.camera(withLatitude: 28.7042, longitude: 77.1025, zoom: 6.0)
        mapView.camera = camera
        self.showMarker(position : mapView.camera.target)
        
    }
    
    func showMarker(position : CLLocationCoordinate2D){
        let marker = GMSMarker()
        marker.position = position
        marker.title = "Delhi"
        marker.snippet = "The Capital Of INDIA"
        marker.map = mapView
    }

}
