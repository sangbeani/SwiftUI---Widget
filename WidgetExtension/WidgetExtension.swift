//
//  WidgetExtension.swift
//  WidgetExtension
//
//  Created by 한상빈 on 2022/12/05.
//

import WidgetKit
import SwiftUI

@main
struct WidgetExtension: WidgetBundle {
    
    @WidgetBundleBuilder
    var body: some Widget {
        ListWidget()
    }
    
}
