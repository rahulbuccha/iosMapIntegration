//
//  ViewController.swift
//  MapIntegration
//
//  Created by Admin on 04/07/22.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    let mapView = MKMapView()

    let searchVc = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mapView)
//        searchVc.searchResultsUpdater = self
        navigationItem.searchController = searchVc

    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        mapView.frame = view.bounds

    }
    
//    func updateSearchResults(for searchController: UISearchController) {
////
////        guard let query = searchController.searchBar.text,
////              !query.trimmingCharacters(in: .whitespaces).isEmpty else{
////            switch result {
////            case .success(let places):
////                print(places)
////
////            case .failure(let error):
////                print(error)
////            }
////
////        }
//    }


}

