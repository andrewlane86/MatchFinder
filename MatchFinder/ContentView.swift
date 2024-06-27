//
//  ContentView.swift
//  MatchFinder
//
//  Created by Andrew Lane on 12/05/2024.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var showWebView = false
    private let urlString: String = "https://www.coachespocket.com/login"
    var body: some View {
        VStack (spacing: 40) {
            WebView(url: URL(string: urlString)!)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 20.0, x: 5, y: 5
)
        }
            
    }
}
struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
        
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
