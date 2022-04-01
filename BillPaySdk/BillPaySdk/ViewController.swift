//
//  ViewController.swift
//  BillPaySdk
//
//  Created by Rishav4 Kumar on 01/04/22.
//

import UIKit
import WebKit


let WEBVIEW_URL : String = "https://psp-mandate-merchant-sit.jiomoney.com:3003/billpay"

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!

    
    @objc func buttonAction(sender: UIButton!) {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
        let url = URL(string: WEBVIEW_URL)!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton()
        button.frame = CGRect(x: 30, y: 70, width: self.view.frame.size.width - 60, height: 40)
        button.backgroundColor = UIColor.red
        button.setTitle("Open Web View ", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
    }
}

