//
//  LandmarkDetail.swift
//  AppleLandmark
//
//  Created by Aaron Makaruk on 1/10/26.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {

            MapView(coordinate: landmark.locationCoordinate)

                .frame(height: 300)



            CircleImage(image: landmark.image)

                .offset(y: -130)

                .padding(.bottom, -130)



            VStack(alignment: .leading) {

                Text(landmark.name)

                    .font(.title)



                HStack {

                    Text(landmark.park)

                    Spacer()

                    Text(landmark.state)

                }

                .font(.subheadline)

                .foregroundStyle(.secondary)



                Divider()



                Text("About \(landmark.name)")

                    .font(.title2)
                Text(landmark.description)

            }

            .padding()




        }
        .navigationTitle(landmark.name)
#if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
#endif
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
