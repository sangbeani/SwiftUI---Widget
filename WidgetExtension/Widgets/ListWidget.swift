//
//  ListWidget.swift
//  Widget_Tutorial
//
//  Created by 한상빈 on 2022/12/05.
//

import SwiftUI
import WidgetKit

struct ListWidget: Widget {
    
    let kind = "ListWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: ListTimelineProvider()) { entry in
            ListWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("List Widget")
        .description("This is an List widget.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
    
}
