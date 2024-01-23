//
//  UberMapView.swift
//  uber
//
//  Created by sasharomanes on 22.01.2024.
//

import SwiftUI
import MapKit

struct UberMapView: UIViewRepresentable {
    let mapView = MKMapView()
    let locationManager = LocationManager()
    
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}

extension UberMapView {
    
    class MapCoordinator: NSObject, MKMapViewDelegate {
        let parent: UberMapView
        
        init(parent: UberMapView) {
            self.parent = parent
            super.init()
        }
        
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude,                                                                 longitude: userLocation.coordinate.latitude),
                                            span: MKCoordinateSpan(latitudeDelta: 0.05,
                                                                   longitudeDelta: 0.05))
            
            parent.mapView.setRegion(region, animated: true)
        }
    }
}
