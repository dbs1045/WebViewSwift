//
//  ViewController.swift
//  WebView
//
//  Created by 윤태환 on 2021/12/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var WebViewMain: WKWebView!={
            let preferences = WKPreferences()
            preferences.javaScriptEnabled = false
            let configuration = WKWebViewConfiguration()
            configuration.preferences = preferences
            return WKWebView(frame: .zero, configuration: configuration)
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let UrlString = "http://localhost:3000"
        if let Url = URL(string: UrlString){
            let urlReq = URLRequest(url: Url)
            WebViewMain.load(urlReq)
        }
    }

    
}

