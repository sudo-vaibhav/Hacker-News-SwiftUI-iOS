//
//  DetailView.swift
//  Hacker-News-SwiftUI-iOS
//
//  Created by Vaibhav Chopra on 18/11/20.
//

import SwiftUI

struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


