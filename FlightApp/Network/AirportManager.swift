//
//  AirportManager.swift
//  FlightApp
//
//  Created by Mac on 27.06.2018.
//  Copyright © 2018 salgara. All rights reserved.
//

import Alamofire
import SwiftyJSON
import Unbox


class AirportManager{
    
    
    static func getAirports(_ completion: @escaping (_ data: [Airport]?, _ error: String?) -> Void ){
        
        
        
        Alamofire.request("http://localhost:8000/api/airports", method: .get)
        .validate()
        .responseJSON { (response) in
                
                
                if let error =  response.error{
                    completion(nil, error.localizedDescription)
                }else{
//                    debugPrint(response.result.value)
                    if let data = response.result.value as? NSArray{
                        var airports = [Airport]()
                        for item in data{
                            do{
                                let airport = try Airport(unboxer: item as! Unboxer)
                                airports.append(airport)
                            }catch _{ }
                        }
                        completion(airports, nil)
                    }else{
                        completion(nil, "Что-то пошло не так..")
                    }
                    
                }
            
                
        }
        
        
        
    }
    
    
}
