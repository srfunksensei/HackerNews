//
//  WebView.swift
//  HackerNews
//
//  Created by MB on 23/09/2020.
//  Copyright © 2020 MB. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString, let url = URL(string: safeString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
    
}
