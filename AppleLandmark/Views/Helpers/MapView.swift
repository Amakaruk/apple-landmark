//
//  MapView.swift
//  AppleLandmark
//
//  Created by Aaron Makaruk on 1/9/26.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {

            MKCoordinateRegion(

                center: coordinate,

                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)

            )

        }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
