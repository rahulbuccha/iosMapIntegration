////
////  ClusterViewController.swift
////  MapIntegration
////
////  Created by Admin on 07/07/22.
////
//
//import UIKit
//import MapKit
//
//class ClusterViewController: UIViewController {
//    var coordinate: CLLocationCoordinate2D
//
//    @IBOutlet weak var mapView: MKMapView!
//
//    // Giving locations manually
//    let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0, longitude: 0 ), latitudinalMeters: 0, longitudinalMeters: 0)
//
//    let newDelhi = Place(title: "New Delhi", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.704060, longitude: 77.102493), info: "dafda")
//
//    let noida = Place(title: "Noida", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.754060, longitude: 77.192493), info: "dafda")
//
//    let shazam = Place(title: "shazam", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.794160, longitude: 77.152693), info: "dafda")
//
//    let gazala = Place(title: "Gazala", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.742260, longitude: 77.112593), info: "dafda")
//
//    let rumor = Place(title: "Rrumor", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.739060, longitude: 77.106493), info: "dafda")
//
//    let kumar = Place(title: "Kumar", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.746497, longitude: 77.108634), info: "dafda")
//
//    let gayle = Place(title: "Gayle", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.766060, longitude: 77.186493), info: "dafda")
//
//    let fyi = Place(title: "FYI Gg", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.774060, longitude: 77.392493), info: "dafda")
//
//    let summer = Place(title: "Summer", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.474060, longitude: 77.092493), info: "dafda")
//
//    let winter = Place(title: "Winter", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.714060, longitude: 77.152493), info: "dafda")
//
//    let geoltoz = Place(title: "Geoltoz", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.794060, longitude: 77.146493), info: "dafda")
//
//    let summon = Place(title: "Summoning", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.794260, longitude: 77.162493), info: "dafda")
//
//    let jujutsu = Place(title: "Jujutsu", subtitle: "The Capital of India", coordinate: CLLocationCoordinate2D(latitude: 28.794360, longitude: 77.172193), info: "dafda")
//
//    let guruGram = Place(title: "Gurugram", subtitle: "The Hub of Industries" ,coordinate: CLLocationCoordinate2D(latitude: 28.459497, longitude: 77.026634), info: "daada")
//
//
//    func mapView.register(AnnotationViewMarker.self, forAnnotationViewWithReuseIdentifier: "marker")
//        mapView.register(AppleClusterAnnotationView.self, forAnnotationViewWithReuseIdentifier: "cluster")
//
//        mapView.annotations.clustering = true
//        annotation.shouldCluster = true
//
//    }
//
//    // creating functions for annotations
//    func setUpMapView(){
//        mapView.setRegion(region, animated: true)
//        mapView.addAnnotation(newDelhi)
//        mapView.addAnnotation(guruGram)
//        mapView.addAnnotation(kumar)
//        mapView.addAnnotation(geoltoz)
//        mapView.addAnnotation(fyi)
//        mapView.addAnnotation(gayle)
//        mapView.addAnnotation(gazala)
//        mapView.addAnnotation(rumor)
//        mapView.addAnnotation(shazam)
//        mapView.addAnnotation(noida)
//        mapView.addAnnotation(summer)
//        mapView.addAnnotation(winter)
//        mapView.addAnnotation(summon)
//        mapView.addAnnotation(jujutsu)
//
//        }

