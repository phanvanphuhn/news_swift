//
//  DetailView.swift
//  H4X0R News
//
//  Created by Phan Van Phu on 08/08/2024.
//

import Foundation
import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

