//
//  ModelData.swift
//  SwiftUIAppleTutorials
//
//  Created by minimani on 2022/09/22.
//

import Foundation
import Combine

// SwiftUI는 관찰 가능한 객체를 구독하고 데이터가 변경될 때 모든 뷰를 업데이트한다.
final class ModelData: ObservableObject {
    // landmarkData.json 을 초기화
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

// Bundle.main 에서 지정된 이름의 JSON 데이터를 가져온다.
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from the bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
