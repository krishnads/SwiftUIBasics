//
//  MapView.swift
//  CompositeViews
//
//  Created by Apple on 22/10/19.
//  Copyright © 2019 Konstant info Solutions Pvt. Ltd. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //Set Region
        let coordinate = CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
        //Add Artwork
        let artwork = Artwork(title: "King David Kalakaua",
        locationName: "Waikiki Gateway Park",
        discipline: "Sculpture",
        coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661))
        uiView.addAnnotation(artwork)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

