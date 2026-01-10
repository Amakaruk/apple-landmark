//
//  LandmarkList.swift
//  AppleLandmark
//
//  Created by Aaron Makaruk on 1/10/26.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}

#Preview {
    LandmarkList()
}
