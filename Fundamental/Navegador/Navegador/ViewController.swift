//
//  ViewController.swift
//  Navegador
//
//  Created by Aluno03 on 20/01/17.
//  Copyright © 2017 pedronobre. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var labelComponent: UILabel!
    
    @IBOutlet weak var indicatorComponent: UIActivityIndicatorView!
    
    @IBOutlet weak var webViewComponent: UIWebView!
    
    final let LOAD_ONLINE: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indicatorComponent.hidesWhenStopped = true
        
        if LOAD_ONLINE {
            self.loadOnline()

        }else{
            self.loadOffline()

        }
        
    }
    
    func loadOffline() {
        
        if let sourcePath = Bundle.main.path(forResource: "blog-dos-smurfs/blog.html", ofType: nil){

            let webPage = URL(fileURLWithPath: sourcePath)
            let request = URLRequest(url: webPage)
            
            webViewComponent.loadRequest(request)
        }
        
    }
    
    func loadOnline() {
        
        if let pageWeb = URL(string: "https://www.google.com/"){
            let request = URLRequest(url: pageWeb)
        
            webViewComponent.loadRequest(request)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func home(_ sender: Any) {
        
        if LOAD_ONLINE {
            self.loadOnline()
            
        }else{
            self.loadOffline()
            
        }

    }

    @IBAction func back(_ sender: Any) {
        
        if webViewComponent.canGoBack {
            webViewComponent.goBack()
        }
        
        
    }
    
    @IBAction func foward(_ sender: Any) {
        
        if webViewComponent.canGoForward {
            webViewComponent.goForward()
        }
        
    }
    
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        indicatorComponent.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        indicatorComponent.stopAnimating()
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        labelComponent.text = request.url?.absoluteString
        
        return true
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
        labelComponent.text = error.localizedDescription
 
    }
    
    
}

