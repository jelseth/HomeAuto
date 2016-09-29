//
//  API.swift
//
//  Created by Taro Minowa on 6/10/14.
//  Copyright (c) 2014 Higepon Taro Minowa. All rights reserved.
//

import Foundation

class API: NSObject, NSURLConnectionDataDelegate {
    
    func GetCurrentDoorState() -> Bool
    {
        SendRestRequest();
        return false;
    }
    
    public func SendRestRequest()
    {
        let config = URLSessionConfiguration.default // Session Configuration
        let session = URLSession(configuration: config) // Load configuration into Session
        let url = URL(string: "https://httpbin.org/ip")!
        
        let task = session.dataTask(with: url, completionHandler: {
            (data, response, error) in
            
            if error != nil {
                
                print(error!.localizedDescription)
                
            } else {
                
                do {
                    
                    if let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any]
                    {
                        //Implement your logic
                        if let ip = json["origin"] as? String
                        {
                            print(ip)
                            if(ip.hasPrefix("65"))
                            {
                                print("Jake is the bomb yo")
                            }
                            
                        };
                        print(json)
                        
                    }
                    
                } catch {
                    
                    print("error in JSONSerialization")
                    
                }
                
                
            }
            
        })
        task.resume()    }
   /* public func dataTaskWithRequest(request: URLRequest, completionHandler: (Data?, URLResponse?, NSError?) -> Void) -> URLSessionDataTask
    {
        let todoEndpoint: String = "http://jsonplaceholder.typicode.com/todos/1"
        guard let url = NSURL(string: todoEndpoint) else {
            print("Error: cannot create URL")
            //return URLSessionDataTask
        }
        
        let urlRequest =
            URLRequest(url: url as URL)
        
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let task = session.dataTask(with: urlRequest, completionHandler:{ _, _, _ in })
        
        let task = session.dataTaskWithRequest(urlRequest, completionHandler: { (data, response, error) in
            // do stuff with response, data & error here
        })
        task.resume()
    }*/

}
