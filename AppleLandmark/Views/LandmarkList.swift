//
//  LandmarkList.swift
//  AppleLandmark
//
//  Created by Aaron Makaruk on 1/10/26.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark.")
        }
    }
}

#Preview {
    LandmarkList()
}
