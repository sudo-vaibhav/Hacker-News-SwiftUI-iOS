//
//  WebView.swift
//  Hacker-News-SwiftUI-iOS
//
//  Created by Vaibhav Chopra on 18/11/20.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    let urlString: String?
    func makeUIView(context: Context) ->WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url : url)
                uiView.load(request)
            }
        }
    }
}
