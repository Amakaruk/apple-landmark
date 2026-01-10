//
//  LandmarkList.swift
//  AppleLandmark
//
//  Created by Aaron Makaruk on 1/10/26.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
