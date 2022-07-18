//
//  customAnnotationView.swift
//  MapIntegration
//
//  Created by Admin on 06/07/22.
//

import Foundation
import UIKit
import MapKit

// for deatiled disclosure but isn't working
class customAnnotationView: MKPinAnnotationView {
    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        canShowCallout = true
        rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
}
