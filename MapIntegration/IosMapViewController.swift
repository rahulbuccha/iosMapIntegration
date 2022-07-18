//
//  IosMapViewController.swift
//  MapIntegration
//
//  Created by Admin on 06/07/22.
//

import UIKit
import MapKit

class IosMapViewController: UIViewController {

    @IBOutlet weak var iosMapView: MKMapView!
    
    // Giving locations manually
    let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 28.704090, longitude: 77.102593 ), latitudinalMeters: 10000, longitudinalMeters: 10000)
    
        let newDelhi = Place(title: "New Delhi", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.704060, longitude: 77.102493), info: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.")
        let guruGram = Place(title: "Gurugram",subtitle: "The Hub of Industries" ,coordinate: CLLocationCoordinate2D(latitude: 28.459497, longitude: 77.026634), info: "The Basilica of the Sacred Heart of Paris, commonly known as Sacré-Cœur Basilica, is a Roman Catholic church and minor basilica in Paris, France, dedicated to the Sacred Heart of Jesus.")


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Giving static input to the map
        let sourceLocation = CLLocationCoordinate2D(latitude: 28.704060, longitude: 77.102493)
        let destinationLocation = CLLocationCoordinate2D(latitude: 28.459497, longitude: 77.026634)
        
        //calling customAnnotations
        iosMapView.register(customAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        self.iosMapView.showAnnotations([newDelhi, guruGram], animated: true)

        //for creating diresctions b/w locations
        createPath(sourceLocation: sourceLocation, destinationLocation: destinationLocation)
        self.iosMapView.delegate = self

    }
    
    // creating functions for annotations
    func setUpMapView(){
        iosMapView.setRegion(region, animated: true)
        iosMapView.addAnnotation(newDelhi)
        iosMapView.addAnnotation(guruGram)
        }

    
    // Creating PlaceMarks
    func createPath(sourceLocation : CLLocationCoordinate2D, destinationLocation : CLLocationCoordinate2D) {

        let sourcePlaceMark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
        let destinationPlaceMark = MKPlacemark(coordinate: destinationLocation, addressDictionary: nil)

        let sourceMapItem = MKMapItem(placemark: sourcePlaceMark)
        let destinationItem = MKMapItem(placemark: destinationPlaceMark)
        
//MARK: Annotations it also works but instead working with functions
//        let sourceAnotation = MKPointAnnotation()
//        sourceAnotation.title = "Delhi"
//        sourceAnotation.subtitle = "The Capital of INIDA"
//
//        if let location = sourcePlaceMark.location {
//            sourceAnotation.coordinate = location.coordinate
//            }
//
//        let destinationAnotation = MKPointAnnotation()
//
//        destinationAnotation.title = "Gurugram"
//        destinationAnotation.subtitle = "The HUB of IT Industries"
//
//        if let location = destinationPlaceMark.location {
//            destinationAnotation.coordinate = location.coordinate
//            }
//        self.iosMapView.showAnnotations([newDelhi, guruGram], animated: true)
        
        
        //MARK: Creating directions
        let directionRequest = MKDirections.Request()
        directionRequest.source = sourceMapItem
        directionRequest.destination = destinationItem
        directionRequest.transportType = .automobile

        let direction = MKDirections(request: directionRequest)

            direction.calculate { (response, error) in
                guard let response = response else {
                    if let error = error {
                        print("ERROR FOUND : \(error.localizedDescription)")

                    }
                    return
                }
                   let route = response.routes[0]
                   self.iosMapView.addOverlay(route.polyline, level: MKOverlayLevel.aboveRoads)
                   let rect = route.polyline.boundingMapRect
                   self.iosMapView.setRegion(MKCoordinateRegion(rect), animated: true)

               }
        

           }

       }

// Created extension for MapUIKit
       extension IosMapViewController : MKMapViewDelegate {

           //for creating rendered lines widht color & overlaying over the map
           func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
               let rendere = MKPolylineRenderer(overlay: overlay)
               rendere.lineWidth = 5
               rendere.strokeColor = .systemBlue
               return rendere

           }

       }

