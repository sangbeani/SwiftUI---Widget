//
//  ListTImelineProvider.swift
//  Widget_Tutorial
//
//  Created by 한상빈 on 2022/12/05.
//

import WidgetKit
import SwiftUI

struct ListTimelineProvider: TimelineProvider {

    typealias Entry = ListEntry
    
    let index = { () -> Int in
        @Environment(\.widgetFamily) var widgetFamily
        
        switch widgetFamily {
        case .systemSmall:
            return 3
        case .systemMedium, .systemLarge, .systemExtraLarge:
            return 7
        @unknown default:
            return 7
        }
    }()
    
    func placeholder(in context: Context) -> ListEntry {
        let tests = Array(TestAppModel().tests[0...index])
        return Entry(date: Date(),tests: tests)
    }
    
    func getSnapshot(in context: Context, completion: @escaping (ListEntry) -> Void) {
        let tests = Array(TestAppModel().tests[0...index])
        completion(Entry(date: Date(), tests: tests))
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<ListEntry>) -> Void) {
        let tests = Array(TestAppModel().tests[0...index])
        completion(Timeline(entries: [Entry(date: Date(), tests: tests)], policy: .never))
    }
    
}
