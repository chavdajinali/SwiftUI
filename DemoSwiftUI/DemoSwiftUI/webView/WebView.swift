//
//  WebView.swift
//  DemoSwiftUI
//
//  Created by BeLocum-6 on 27/05/24.
//

import Foundation
import SwiftUI
import WebKit
import Ink

struct WebView : UIViewRepresentable {
    var html: String
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        webView.loadHTMLString(html, baseURL:  nil)
    }

}

class ParseContent  {
    
    let html = MarkdownParser().html(from: )
}
