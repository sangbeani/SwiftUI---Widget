//
//  TestAppModel.swift
//  Widget_Tutorial
//
//  Created by 한상빈 on 2022/12/05.
//

import Foundation

class TestAppModel: ObservableObject {
    
    @Published var selectedList: TestData?
    
    @Published var tests: [TestData] = [
        TestData(id: 1, image: "test_image", name: "테스트1"),
        TestData(id: 2, image: "test_image", name: "테스트2"),
        TestData(id: 3, image: "test_image", name: "테스트3"),
        TestData(id: 4, image: "test_image", name: "테스트4"),
        TestData(id: 5, image: "test_image", name: "테스트5"),
        TestData(id: 6, image: "test_image", name: "테스트6"),
        TestData(id: 7, image: "test_image", name: "테스트7"),
        TestData(id: 8, image: "test_image", name: "테스트8"),
    ]
    
}
