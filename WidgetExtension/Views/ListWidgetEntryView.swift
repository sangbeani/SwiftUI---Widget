//
//  ListWidgetEntryView.swift
//  Widget_Tutorial
//
//  Created by 한상빈 on 2022/12/05.
//

import SwiftUI
import WidgetKit

struct ListWidgetEntryView: View {
    
    @Environment(\.widgetFamily) private var widgetFamily
    
    var entry: ListTimelineProvider.Entry
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image("test_image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 10, height: 10)
            Text("농심 영업 시스템")
                .font(.system(size: 10, weight: .bold, design: .rounded))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 15)
        
        
        
        switch widgetFamily {
        case .systemSmall:
            VStack{
                HStack(alignment: .center, spacing: 30) {
                    ForEach(0..<2) { num in
                        let test = entry.tests[num]
                        VStack(alignment: .center, spacing: 5) {
                            Link(destination: URL(string: "test://tests?id=\(test.id)")!) {
                                Image(test.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                                HStack {
                                    Text(test.name)
                                        .font(.system(size: 12, weight: .bold, design: .rounded))
                                }
                            }
                        }
                    }
                }
                
                HStack(alignment: .center, spacing: 30) {
                    ForEach(0..<2) { num in
                        let test = entry.tests[num + 2]
                        VStack(alignment: .center, spacing: 5) {
                            Link(destination: URL(string: "test://tests?id=\(test.id)")!) {
                                Image(test.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                                HStack {
                                    Text(test.name)
                                        .font(.system(size: 12, weight: .bold, design: .rounded))
                                }
                            }
                        }
                    }
                }
            }
        case .systemMedium:
            VStack{
                HStack(alignment: .center, spacing: 40) {
                    ForEach(0..<4) { num in
                        let test = entry.tests[num]
                        VStack(alignment: .center, spacing: 5) {
                            Link(destination: URL(string: "test://tests?id=\(test.id)")!) {
                                Image(test.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                                HStack {
                                    Text(test.name)
                                        .font(.system(size: 12, weight: .bold, design: .rounded))
                                }
                            }
                        }
                    }
                }
                
                HStack(alignment: .center, spacing: 40) {
                    ForEach(0..<4) { num in
                        let test = entry.tests[num + 4]
                        VStack(alignment: .center, spacing: 5) {
                            Link(destination: URL(string: "test://tests?id=\(test.id)")!) {
                                Image(test.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                                HStack {
                                    Text(test.name)
                                        .font(.system(size: 12, weight: .bold, design: .rounded))
                                }
                            }
                        }
                    }
                }
            }
        case .systemLarge:
            Text("systemLarge")
        case .systemExtraLarge:
            Text("systemExtraLarge")
        @unknown default:
            Text("systemDefault")
        }
    }
}
