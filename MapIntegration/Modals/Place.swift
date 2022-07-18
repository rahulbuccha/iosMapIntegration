//
//  Place.swift
//  MapIntegration
//
//  Created by Admin on 06/07/22.
//

import Foundation
import MapKit

//Creating custom annotations for place marks
class Place: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        self.info = info
    }
    
}
