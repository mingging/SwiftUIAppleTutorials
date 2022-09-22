//
//  Landmark.swift
//  SwiftUIAppleTutorials
//
//  Created by minimani on 2022/09/22.
//

import Foundation
import SwiftUI
import CoreLocation

// 기존 Landmark 모델에 id가 있으니 사용
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    // 데이터에서 이미지 이름을 읽는 속성 추가
    // asset에서 가져온 이미지 이름
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    
    // coordinates JSON 데이터 구조
    private var coordinates: Coordinates
    // MapKit 프레임워크와 상호 작용하는 속성 추가
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

